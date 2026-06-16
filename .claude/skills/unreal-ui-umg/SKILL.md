---
name: unreal-ui-umg
description: >
  Build user interfaces — menus, HUDs, health bars, dialogs, settings/pause
  screens — for an Unreal Engine 5.6/5.7 C++ game with UMG (Unreal Motion
  Graphics) and Slate. Use this whenever you are creating a UUserWidget C++
  class as the parent of a Widget Blueprint, accessing designer-placed widgets
  from C++ via UPROPERTY(meta=(BindWidget)) UButton*/UTextBlock*/UImage*/
  UProgressBar*, spawning + showing UI with CreateWidget<T>() and
  AddToViewport()/RemoveFromParent(), binding button events
  (Button->OnClicked.AddDynamic(...)) or property/function bindings, laying out
  a Canvas Panel with Anchors or flowing widgets in a HorizontalBox/VerticalBox/
  ScrollBox/UniformGridPanel, scaling UI across resolutions with DPI Scaling,
  writing code-only UI in Slate (SNew/SAssignNew, SButton/STextBlock/
  SVerticalBox, AddViewportWidgetContent), or localizing UI text with FText +
  NSLOCTEXT/LOCTEXT + String Tables (zh-Hans + pt-BR per the project benchmark).
  Reach for it any time the task is "make a main menu", "add a health/progress
  bar", "pause/settings screen", "hook this button up in C++", "my BindWidget
  pointer is null", "the widget doesn't show on screen", "CreateWidget /
  AddToViewport", "anchor this to the corner", "the UI doesn't scale on other
  resolutions", "translate the menu", or "build a HUD from C++". It has the
  verified CreateWidget+AddToViewport flow, the BindWidget name-match rule, the
  Slate SNew composition idiom, and the FText/String-Table localization path.
  Covers UI/UX Artist and Technical Designer work. Assumes a buildable project
  (unreal-project-setup).
---

# Unreal UI in C++ — UMG + Slate (UE 5.6/5.7)

Unreal has **two layers** of UI and you use them together:

- **UMG (Unreal Motion Graphics)** — the designer-facing UI. You author a
  **Widget Blueprint** in the UMG editor (drag `Button`, `TextBlock`, `Image`,
  `ProgressBar`, `CanvasPanel`, `HorizontalBox`… into a visual designer), and you
  give that Widget Blueprint a **`UUserWidget` C++ parent class** that holds the
  logic. This is the primary path for game UI — menus, HUDs, dialogs.
- **Slate** — the underlying C++ UI framework UMG is built on (the Unreal Editor
  itself is Slate). Use Slate directly for **code-only UI** with no asset: you
  declare the whole tree in C++ with `SNew`/`SAssignNew`. Heavier and lower-level;
  reach for it for editor tooling or purely programmatic in-game UI.

Every visible UMG widget is a `UWidget` wrapping an underlying Slate `SWidget`
(`references/api/Creating_User_Interfaces_Basics_Building_Your_UI_UMG_Slots.md`).
C++ primary here; the Widget Blueprint is authored in-editor, so what this skill
*scaffolds* is the C++ `UUserWidget` parent.

## The one thing that trips everyone up

Three failures account for almost every "my UMG widget is broken" — all C++-side:

1. **`BindWidget` is matched by NAME, not by type.** To touch a widget you placed
   in the designer from C++, you declare a property:
   ```cpp
   UPROPERTY(meta = (BindWidget))
   TObjectPtr<UButton> StartButton;   // <- "StartButton" must be the widget's
                                       //    exact name in the Widget Blueprint
   ```
   If the widget in the designer is named anything other than `StartButton`, the
   pointer is **null at runtime** (the editor flags the missing bind at compile).
   This is the single most common UMG-from-C++ bug. Always null-check before use.

2. **Forgetting `AddToViewport()` → nothing shows.** Creating a widget does not
   display it. You must `CreateWidget<T>(...)` **and then** call `AddToViewport()`
   (or `AddToPlayerScreen()`). The docs are explicit: *"in order for it to be
   displayed in-game, you will need [to] call … the Create Widget and Add to
   Viewport"*
   (`references/api/Creating_User_Interfaces_Basics_Displaying_Your_UI_Creating_Widgets.md`).
   To hide it again, call `RemoveFromParent()`.

3. **User-facing text must be `FText`, not `FString`.** `SetText` on a `TextBlock`
   takes an `FText`. `FText` is the only string type the localization system
   translates — build it with `NSLOCTEXT`/`LOCTEXT`/`FText::Format`, never from a
   raw `FString`, or it will never localize to zh-Hans / pt-BR.

> No Unreal Engine is installed here, so **every snippet below is doc-sourced from
> the embedded UE 5.6/5.7 documentation (`references/api/`), not compile-tested**
> in this environment. The `BindWidget`/`CreateWidget` C++ macros are standard UE
> C++ idioms; the surrounding concepts (Widget Blueprint ↔ `UUserWidget` parent,
> Canvas anchors, FText/LOCTEXT, Slate `SNew`) are grounded in the embedded pages.

## The UUserWidget C++ ⟷ Widget Blueprint pattern

The contract: **C++ owns the logic and the typed pointers; the Widget Blueprint
owns the visual layout.** You reparent a Widget Blueprint to your `UUserWidget`
subclass, and the two are wired together by `BindWidget` name matching.

```cpp
// MainMenuWidget.h
#pragma once
#include "CoreMinimal.h"
#include "Blueprint/UserWidget.h"
#include "MainMenuWidget.generated.h"

class UButton;
class UTextBlock;

UCLASS()
class MYGAME_API UMainMenuWidget : public UUserWidget
{
    GENERATED_BODY()
protected:
    virtual void NativeConstruct() override;   // events bound here

    UPROPERTY(meta = (BindWidget)) TObjectPtr<UButton>    StartButton; // names must
    UPROPERTY(meta = (BindWidget)) TObjectPtr<UTextBlock> TitleLabel;  // match designer

    UFUNCTION() void OnStartClicked();          // OnClicked target must be UFUNCTION
};
```

```cpp
// MainMenuWidget.cpp
#include "MainMenuWidget.h"
#include "Components/Button.h"
#include "Components/TextBlock.h"

void UMainMenuWidget::NativeConstruct()
{
    Super::NativeConstruct();
    if (StartButton)                                   // null-check the bind
        StartButton->OnClicked.AddDynamic(this, &UMainMenuWidget::OnStartClicked);
    if (TitleLabel)
        TitleLabel->SetText(NSLOCTEXT("Menu", "Title", "My Game"));  // FText
}

void UMainMenuWidget::OnStartClicked() { /* start the game */ }
```

`NativeConstruct` is the UMG C++ equivalent of the Widget Blueprint's *Event
Construct* — the underlying Slate widget exists by then, so bind events and push
initial state here (the docs use Event Construct exactly this way:
`references/api/...Driving_UI_Updates_with_Events.md`). `scripts/new_user_widget.sh`
generates this `.h/.cpp` pair (Button + TextBlock + OnClicked) for you.

## Creating + showing a widget from C++

`CreateWidget<T>()` then `AddToViewport()` — both halves are required.

```cpp
#include "Blueprint/UserWidget.h"

// In a PlayerController / GameMode / HUD. The template arg is your UUserWidget
// subclass; pass the Widget Blueprint's class (set via UPROPERTY in the editor).
if (UMainMenuWidget* Menu = CreateWidget<UMainMenuWidget>(GetWorld(), MenuClass))
{
    Menu->AddToViewport();      // <- without this, nothing draws
}
// later:  Menu->RemoveFromParent();   // hide / tear down
```

Pair it with input mode + cursor so the player can click the UI: the docs cover
**Set Input Mode Game and UI / UI Only / Game Only** and **Set Show Mouse Cursor**
(`references/api/...Creating_Widgets.md`). The C++ equivalents are
`APlayerController::SetInputMode(FInputModeGameAndUI())` and
`PlayerController->SetShowMouseCursor(true)`. Full lifecycle (HUD on spawn, swap
menus, pause screen) is in `references/umg_widgets_and_cpp.md`.

## Common widgets & wiring events

Designer widget → C++ component class → access path:

| UMG widget | C++ type | Header | Typical C++ |
| --- | --- | --- | --- |
| Button | `UButton` | `Components/Button.h` | `->OnClicked.AddDynamic(this, &U::Fn)` |
| TextBlock | `UTextBlock` | `Components/TextBlock.h` | `->SetText(FText)` |
| Image | `UImage` | `Components/Image.h` | `->SetBrushFromTexture(Tex)` |
| ProgressBar | `UProgressBar` | `Components/ProgressBar.h` | `->SetPercent(0..1f)` |
| CanvasPanel | `UCanvasPanel` | `Components/CanvasPanel.h` | absolute layout + anchors |
| Horizontal/VerticalBox | `UHorizontalBox`/`UVerticalBox` | `Components/HorizontalBox.h` | flowing layout |

`OnClicked` is a multicast **dynamic** delegate, so the handler **must** be a
`UFUNCTION()` and you bind with `AddDynamic`. Drive a HUD by pushing state into
widgets: `HealthBar->SetPercent(HP / MaxHP)`, `ScoreLabel->SetText(...)`. The docs
distinguish three HUD-update strategies and recommend **event-driven** over
per-frame Property/Function Bindings for anything non-trivial
(`references/api/...Driving_UI_Updates_with_Events.md`,
`references/api/...UMG_Best_Practices.md`). Full widget catalog +
property/function binding (the editor "Bind" workflow, and the gotcha that
*calling Set on a bound property breaks the binding*) is in
`references/umg_widgets_and_cpp.md`.

## Layout: Canvas Panel anchors vs box panels

Two ways to position children, same as the wider engine:

- **Canvas Panel + Anchors** — absolute placement that adapts to resolution.
  Anchors are `Min(X,Y)`/`Max(X,Y)` as fractions of the parent: `Min(0,0)` = top-
  left, `Max(1,1)` = bottom-right; a split anchor (Min≠Max) **stretches** the
  widget with the screen. Anchor a HUD element to a *corner* so it doesn't slide
  off-screen on other aspect ratios
  (`references/api/Creating_User_Interfaces_UMG_Editor_Reference_Anchors.md`). At
  runtime, modify position from C++ by `Cast<UCanvasPanelSlot>(Widget->Slot)` then
  setting `SetPosition`/`SetAnchors`
  (`references/api/...UMG_Slots.md`).
- **Box panels** (`HorizontalBox`/`VerticalBox`/`ScrollBox`/`UniformGridPanel`) —
  children flow automatically; each slot is **Auto** (size to content) or **Fill**
  (take remaining space). Use Fill on the middle box to push top/bottom rows to
  the screen edges (`references/api/...UMG_Best_Practices.md`).

A child's slot **type** depends on its parent panel — a CanvasPanelSlot has
anchors/position, a GridSlot has row/column. Cast `Widget->Slot` to the right slot
type before setting layout properties. Anchor model, slot casting, and box Auto/
Fill are in `references/umg_widgets_and_cpp.md`.

## DPI scaling (multi-resolution)

Author widgets at a target resolution and DPI Scale **1.0**, then let UE's
**DPI Scaling** rule scale the whole UI per device. Pick a **DPI Scale Rule**
(e.g. *Shortest Side*) and tune the **DPI Curve** in Project Settings → User
Interface; anchor corner elements so nothing crops on other aspect ratios
(`references/api/...Scaling_UI_for_Different_Devices.md`,
`references/api/...UMG_Best_Practices.md`). Covered in
`references/umg_widgets_and_cpp.md`.

## Slate — code-only UI

When you want UI entirely in C++ with no Widget Blueprint asset, use Slate
directly. Add the modules to your `.Build.cs` first
(`references/api/Creating_User_Interfaces_Slate_UI_Framework_Using_Slate_in_a_Project.md`):

```csharp
PublicDependencyModuleNames.AddRange(new string[] { "Core","CoreUObject","Engine","InputCore" });
PrivateDependencyModuleNames.AddRange(new string[] { "Slate", "SlateCore" });
```

Then compose declaratively with `SNew` / `+Slot()` and show it via the game
viewport (verified pattern, `references/api/...Using_Slate_In-Game.md`):

```cpp
TSharedRef<SWidget> Hud =
    SNew(SVerticalBox)
    + SVerticalBox::Slot().HAlign(HAlign_Center)
    [
        SNew(STextBlock).Text(LOCTEXT("Score", "Score: 0"))
    ];

if (GEngine && GEngine->GameViewport)                 // both can be null — check
    GEngine->GameViewport->AddViewportWidgetContent(Hud);
```

`SButton` takes `.OnClicked(...)`, `SHorizontalBox`/`SVerticalBox`/`SScrollBox`/
`SUniformGridPanel` arrange slots with `.HAlign`/`.VAlign`/`.FillWidth`/`.Padding`
(`references/api/...Slate_Widget_Examples.md`). `SAssignNew(Member, SWeakWidget)`
captures the widget into a member while building. Slate idioms, `SLATE_BEGIN_ARGS`/
`SLATE_EVENT` for custom widgets, and the UMG-vs-Slate decision are in
`references/slate_and_localization.md`.

## Localization (zh-Hans + pt-BR per benchmark)

Don't hardcode user-facing strings — wrap them in **`FText`** so the localization
pipeline can translate them. Use `NSLOCTEXT("Namespace","Key","Source text")` or,
with a `#define LOCTEXT_NAMESPACE "..."` at file top, `LOCTEXT("Key","Source")`;
format with `FText::Format(LOCTEXT(...), Args)`. Move shared strings into a
**String Table** asset and reference by table-id + key. The project benchmark
targets **Simplified Chinese (zh-Hans)** and **Brazilian Portuguese (pt-BR)** (~30%
revenue uplift each) — and CJK needs a font with glyph coverage (UMG uses Runtime-
cached Font assets; `references/api/...Using_Fonts_with_UMG.md`). Setup, the
Localization Dashboard, String Tables, locale switching, and CJK fonts are in
`references/slate_and_localization.md`.

## Verifying

UI C++ compiles like any code; the logic (does the click fire, does the bar
update) is testable headlessly, only the *look* needs eyes. No engine is
installed here so nothing was compile-tested. For a live build, the **Widget
Reflector** (`Ctrl+Shift+W`) and **Console Slate Debugger** inspect the widget
tree at runtime
(`references/api/Creating_User_Interfaces_Testing_and_Debugging.md`); automated
UI testing hands off to the sibling QA tooling.

## What this covers / hands off to

Covers **UI/UX Artist** and **Technical Designer** implementation work: menus,
HUDs, dialogs, settings/pause screens, layout, theming, data display, and UI
localization.

- Project scaffold, modules, `.Build.cs`, build → **unreal-project-setup**
- Game logic the UI reads/drives, actors, input → **unreal-gameplay-cpp**
- Authoring the Widget Blueprint visually / pure-BP UI → **unreal-blueprints**
- Materials/shaders behind fancy UI fills (UI materials) → **unreal-rendering-materials**
- Packaging the build / shipping per-platform → **unreal-build-deploy-multiplayer**

Depth lives in `references/`:
- `references/umg_widgets_and_cpp.md` — UUserWidget/BindWidget, CreateWidget+AddToViewport, widgets, OnClicked, Canvas anchors + slots, DPI scaling, HUD update strategies
- `references/slate_and_localization.md` — Slate SNew composition, AddViewportWidgetContent, custom S-widgets, FText/LOCTEXT, String Tables, zh-Hans + pt-BR, CJK fonts
- `references/troubleshooting.md` — BindWidget null, nothing on screen, no clicks/input mode, FString-not-FText, anchor/crop surprises, slot-cast crashes
- `references/api/` — exhaustive embedded UE 5.6/5.7 UI doc pages (source of truth — grep it)
