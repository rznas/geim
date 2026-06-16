# UMG widgets & the C++ side

Synthesis of the embedded UMG pages (`references/api/Creating_User_Interfaces_*`)
focused on the **C++** workflow. Grounded in those pages; the `BindWidget` /
`CreateWidget` reflection macros are standard UE C++ idioms. **Not compile-tested**
(no engine installed).

---

## 1. The Widget Blueprint ⟷ UUserWidget C++ relationship

You build the *visible* UI as a **Widget Blueprint** (Content Browser → Add →
User Interface → Widget Blueprint), opened in the **UMG editor**: a Designer tab
(Palette of `UWidget` types, Hierarchy, Visual Designer, Details, Animations) and
a Graph tab
(`api/Creating_User_Interfaces_Basics_Building_Your_UI_Widget_Blueprints.md`).

For a C++-primary project you give the Widget Blueprint a **C++ parent class**
deriving from `UUserWidget`, then **reparent** the Widget Blueprint to it
(Blueprint editor → File → Reparent, or set the parent at creation). The split:

- **C++** owns logic, typed pointers to widgets, event handlers, data.
- **Widget Blueprint** owns visual layout, styling, animations.

They are glued by `BindWidget` (name matching). Reusable sub-UI is itself a
"User Widget" you can drop into other widgets
(`api/...UMG_Best_Practices.md` → *User Widgets / Reusing Content*).

---

## 2. BindWidget — accessing designer widgets from C++

```cpp
// in your UUserWidget subclass header
UPROPERTY(meta = (BindWidget))
TObjectPtr<UButton> StartButton;          // resolves to the designer widget
                                          // literally named "StartButton"

UPROPERTY(meta = (BindWidget))
TObjectPtr<UTextBlock> TitleLabel;
```

Rules that bite:

- **Name match is exact and case-sensitive.** The property name must equal the
  widget's name in the Widget Blueprint, or the pointer is `nullptr` at runtime.
  The editor reports a missing-bind compile error when the names don't line up.
- **`meta=(BindWidgetOptional)`** makes the bind non-fatal (pointer may be null by
  design); plain `BindWidget` requires the widget to exist.
- Always `if (Ptr)` before dereferencing — defensive against rename drift.
- Use `TObjectPtr<T>` (UE5) under `UPROPERTY`; it keeps the widget referenced.

Forward-declare the component classes in the header (`class UButton;`) and
`#include "Components/Button.h"` etc. in the `.cpp`.

---

## 3. NativeConstruct — where C++ wires things up

`UUserWidget` lifecycle hooks (C++ overrides of the Blueprint events):

| C++ override | Blueprint equiv | Use for |
| --- | --- | --- |
| `NativeOnInitialized()` | (once, on creation) | one-time setup independent of being shown |
| `NativeConstruct()` | **Event Construct** | bind events, push initial state (runs each add-to-viewport) |
| `NativeTick(Geometry, DeltaTime)` | Event Tick | per-frame (avoid for UI updates — see §7) |
| `NativeDestruct()` | Event Destruct | teardown |

The docs use *Event Construct* to cache references and bind dispatchers
(`api/...Driving_UI_Updates_with_Events.md`) — `NativeConstruct` is its C++ twin.
Bind your `OnClicked` handlers and call initial `SetText`/`SetPercent` here.

```cpp
void UMainMenuWidget::NativeConstruct()
{
    Super::NativeConstruct();                          // ALWAYS call Super
    if (StartButton)
        StartButton->OnClicked.AddDynamic(this, &UMainMenuWidget::OnStartClicked);
}
```

---

## 4. Creating & showing widgets (CreateWidget + AddToViewport)

The docs are explicit: a Widget Blueprint shows in-game only when you **Create
Widget** *and* **Add to Viewport**
(`api/...Displaying_Your_UI_Creating_Widgets.md`). C++:

```cpp
#include "Blueprint/UserWidget.h"

// TSubclassOf<UMainMenuWidget> MenuClass;  // a UPROPERTY set to the Widget BP class
if (UMainMenuWidget* Menu = CreateWidget<UMainMenuWidget>(GetWorld(), MenuClass))
{
    Menu->AddToViewport();          // draws it. Omit -> nothing appears.
    // Menu->AddToPlayerScreen();   // alt: per-local-player, for split-screen
}
```

- `CreateWidget<T>(OwningObject, WidgetClass)` — owner is usually a
  `UWorld*`, `APlayerController*`, or `UGameInstance*`.
- Keep the returned pointer (a `UPROPERTY` member) if you'll hide/reuse it.
- **Remove / hide:** `Menu->RemoveFromParent();` (docs: *Remove from Parent*).
- **Z-order:** `AddToViewport(int32 ZOrder)` — higher draws on top.
- **Adding a widget to a widget** (not the viewport): use the panel's
  `AddChild` / slot API, *not* `AddToViewport`
  (`api/...Creating_Widgets.md` → *Adding Widgets to Widgets*).

### Input mode & cursor (so the UI is clickable)

The docs cover **Set Input Mode** (Game and UI / UI Only / Game Only) and **Set
Show Mouse Cursor** (`api/...Creating_Widgets.md`). C++ on the PlayerController:

```cpp
FInputModeGameAndUI Mode;                 // also: FInputModeUIOnly / FInputModeGameOnly
Mode.SetWidgetToFocus(Menu->TakeWidget());
PlayerController->SetInputMode(Mode);
PlayerController->SetShowMouseCursor(true);
```

Use **UI Only** sparingly (it consumes all input); **Game Only** for
non-interactive HUDs (health/score/time).

---

## 5. Common widgets & their C++ types

| Designer widget | C++ class | Header | Common C++ |
| --- | --- | --- | --- |
| Button | `UButton` | `Components/Button.h` | `OnClicked.AddDynamic(...)`, `SetIsEnabled` |
| Text | `UTextBlock` | `Components/TextBlock.h` | `SetText(FText)`, `SetColorAndOpacity` |
| Image | `UImage` | `Components/Image.h` | `SetBrushFromTexture`, `SetColorAndOpacity` |
| Progress Bar | `UProgressBar` | `Components/ProgressBar.h` | `SetPercent(0..1f)`, `SetFillColorAndOpacity` |
| Check Box | `UCheckBox` | `Components/CheckBox.h` | `OnCheckStateChanged`, `SetIsChecked` |
| Slider | `USlider` | `Components/Slider.h` | `OnValueChanged`, `SetValue` |
| Editable Text | `UEditableTextBox` | `Components/EditableTextBox.h` | `OnTextCommitted`, `GetText` |
| Canvas Panel | `UCanvasPanel` | `Components/CanvasPanel.h` | container; absolute + anchors |
| Horizontal Box | `UHorizontalBox` | `Components/HorizontalBox.h` | flowing row; `AddChildToHorizontalBox` |
| Vertical Box | `UVerticalBox` | `Components/VerticalBox.h` | flowing column |
| Scroll Box | `UScrollBox` | `Components/ScrollBox.h` | scrolling list |
| Uniform Grid | `UUniformGridPanel` | `Components/UniformGridPanel.h` | even grid |

(The Widget Blueprint Palette shows *any* class inheriting `UWidget`:
`api/...Widget_Blueprints.md`.)

---

## 6. Wiring events (OnClicked & friends)

`UButton::OnClicked` is a **multicast dynamic delegate**, so:

- the handler **must** be a `UFUNCTION()` with no params:
  `UFUNCTION() void OnStartClicked();`
- bind with `AddDynamic(this, &UClass::Handler)` (not `BindUObject` — that's for
  non-dynamic delegates).

```cpp
StartButton->OnClicked.AddDynamic(this, &UMainMenuWidget::OnStartClicked);
QuitButton->OnClicked.AddDynamic(this, &UMainMenuWidget::OnQuitClicked);
VolumeSlider->OnValueChanged.AddDynamic(this, &USettings::OnVolumeChanged); // float param
```

The docs also describe **Bindable Events** (single-handler, Slate-style: Click
Method / Touch Method / IsFocusable on a Button) and **Multicast Events** (the
standard `+` event in the Details panel)
(`api/Creating_User_Interfaces_UMG_Editor_Reference_UMG_Events.md`).

---

## 7. Driving a HUD — three update strategies (prefer events)

Push game state into widgets:

```cpp
HealthBar->SetPercent(CurrentHP / MaxHP);            // UProgressBar 0..1
ScoreLabel->SetText(FText::AsNumber(Score));         // FText, not FString
AmmoLabel->SetText(FText::Format(
    NSLOCTEXT("HUD","Ammo","{0} / {1}"),
    FText::AsNumber(Ammo), FText::AsNumber(MaxAmmo)));
```

The docs lay out three ways to feed a HUD, cheapest last
(`api/...Driving_UI_Updates_with_Events.md`, `api/...UMG_Best_Practices.md`):

1. **Function Binding** — a bound function evaluated **every frame**. Simple, but
   runs constantly even when nothing changed.
2. **Property Binding** — bind a widget property to a variable; cheaper, but still
   polled per frame. *Calling `Set...` directly on a property you've bound
   **breaks the binding*** (`api/...Property_Binding.md`).
3. **Event-driven** (recommended for non-trivial UI) — update only when the value
   changes, via an **Event Dispatcher** (C++: a multicast delegate the gameplay
   side broadcasts; the widget subscribes in `NativeConstruct`). No per-frame cost.

Rule of thumb from the docs: *use Events to drive UI updates instead of Bindings
or Tick whenever possible.*

---

## 8. Layout — Canvas anchors & box panels

### Canvas Panel + Anchors

Anchors place a widget on a **Canvas Panel** as fractions of the parent
(`api/Creating_User_Interfaces_UMG_Editor_Reference_Anchors.md`):

- `Min(0,0)`/`Max(0,0)` = upper-left; `Min(1,1)`/`Max(1,1)` = bottom-right.
- A **split** anchor (Min ≠ Max) **stretches** the widget with the screen
  (Horizontal / Vertical / Both stretch presets).
- Offsets are in Slate Units from the anchor medallion.
- Anchor HUD elements to the **corner they live near** so they don't slide off on
  other aspect ratios (the docs show a widget cropped off-screen because it was
  anchored top-left but positioned bottom-right).

### Box panels — Auto vs Fill

`HorizontalBox`/`VerticalBox`/`ScrollBox` flow children; each slot is **Auto**
(size to content) or **Fill** (take remaining space)
(`api/...UMG_Best_Practices.md` → *Formatting Tip*). Classic menu layout: top and
bottom rows **Auto**, middle box **Fill** → the middle pushes the rows to the
screen edges. `ScrollBox` = a `VerticalBox` that scrolls. `UniformGridPanel`
distributes children evenly.

### Slot types & runtime layout from C++

A child's slot **type depends on its parent panel** — a `CanvasPanelSlot` has
anchors/offsets, a `GridSlot` has row/column
(`api/...UMG_Slots.md`). To change layout at runtime, cast the slot:

```cpp
if (UCanvasPanelSlot* CSlot = Cast<UCanvasPanelSlot>(MyWidget->Slot))
{
    CSlot->SetAnchors(FAnchors(1.f, 1.f));   // bottom-right
    CSlot->SetPosition(FVector2D(-20, -20)); // offset from anchor
    CSlot->SetAlignment(FVector2D(1.f, 1.f));
}
```

Adding children from C++: `Canvas->AddChildToCanvas(W)`,
`HBox->AddChildToHorizontalBox(W)`, then cast the returned slot to set layout.

> **Render Transforms are for animation, not layout** — to permanently resize a
> widget, wrap it in a **Scale Box** (layout scale); a Render Transform scale is
> not part of layout and won't scale correctly across resolutions
> (`api/...UMG_Best_Practices.md` → *Using Render Transforms*).

---

## 9. DPI scaling (multi-resolution)

Author at a fixed target resolution and **DPI Scale 1.0**, then let UE scale the
whole UI per device (`api/...Scaling_UI_for_Different_Devices.md`,
`api/...UMG_Best_Practices.md`):

1. Project Settings → **User Interface → DPI Scaling**.
2. Pick a **DPI Scale Rule** (e.g. *Shortest Side*) — which screen dimension
   drives the scale.
3. Tune the **DPI Curve** — resolution→scale keys; set the base device to scale
   1.0, add keys for other devices.
4. Anchor corner elements so nothing crops on other aspect ratios.

Build every Widget Blueprint at the **same** target resolution + scale, or they'll
scale inconsistently relative to each other.

---

## 10. Optimization pointers (from the docs)

`api/Creating_User_Interfaces_Optimizing_User_Interfaces*` and
`api/...UMG_Best_Practices.md`:

- Prefer **event-driven** updates over per-frame Bindings/Tick.
- Wrap rarely-changing UI in an **Invalidation Box** to cache the Slate draw
  (`api/...Widget_Type_Reference_Invalidation_Box.md`,
  `api/...Optimizing_User_Interfaces_UI_Invalidation.md`).
- Prefer **textures** over **materials** for UI art when possible.
- **Widget Reflector** (`Ctrl+Shift+W`) for stats/inspection;
  **Console Slate Debugger** for runtime tracing
  (`api/...Testing_and_Debugging*`).
- For input-heavy, controller-first UI consider **Common UI** (the plugin) —
  `api/...Plugins_for_UI_Development_Common_UI*` — which adds input routing,
  activatable widgets, and a bound action bar on top of UMG.
