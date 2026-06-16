# Slate (code-only UI) & UI localization

Synthesis of the embedded Slate pages
(`references/api/Creating_User_Interfaces_Slate_UI_Framework_*`) and the text/
localization/fonts pages. Grounded in those pages; **not compile-tested** (no
engine installed).

---

## Part A — Slate: building UI entirely in C++

### When Slate, when UMG?

- **UMG** (Widget Blueprint + `UUserWidget`) — the default for game UI. Designer-
  friendly, animations, easy iteration. Use it for menus/HUDs/dialogs.
- **Slate** — the C++ framework UMG sits on. Use it directly for **code-only UI
  with no asset**: editor tooling, slate-only in-game UI, or custom reusable
  `SWidget`s. Every UMG `UWidget` wraps a Slate `SWidget`.

Slate's selling point (`api/...Slate_Overview.md`): a **declarative syntax** —
`SNew` + nested `+Slot()[ ... ]` mirrors the visual tree in code.

### Module setup (.Build.cs)

Before including Slate headers, add the modules
(`api/Creating_User_Interfaces_Slate_UI_Framework_Using_Slate_in_a_Project.md`):

```csharp
PublicDependencyModuleNames.AddRange(new string[] {
    "Core", "CoreUObject", "Engine", "InputCore"
});
PrivateDependencyModuleNames.AddRange(new string[] {
    "Slate", "SlateCore"
});
```

`InputCore` is public by default in new code projects; `Slate`/`SlateCore` are
often present but commented out — uncomment them. (For UMG specifically you also
need the `"UMG"` module.)

### Declaring a tree with SNew / SAssignNew

```cpp
TSharedRef<SWidget> Hud =
    SNew(SVerticalBox)
    + SVerticalBox::Slot()
        .Padding(8.0f)
        .HAlign(HAlign_Center)
    [
        SNew(STextBlock)
        .Text(LOCTEXT("Score", "Score: 0"))     // FText, localizable
    ]
    + SVerticalBox::Slot()
        .AutoHeight()
    [
        SNew(SButton)
        .OnClicked(this, &MyClass::OnStartClicked)   // FReply handler
        [
            SNew(STextBlock).Text(LOCTEXT("Start", "Start"))
        ]
    ];
```

- **`SNew(SType)`** creates a shared widget; **`SAssignNew(Member, SType)`** does
  the same *and* assigns it into a `TSharedPtr`/`TSharedRef` member while building
  (`api/...Using_Slate_In-Game.md`).
- **`+SPanel::Slot()`** adds a slot; **`[ ... ]`** holds the slot's content.
- `SButton::OnClicked` takes a handler returning `FReply` (e.g.
  `FReply::Handled()`); `SLATE_EVENT(FOnClicked, OnClicked)` is the delegate type
  (`api/...Slate_Overview.md`).

### Common Slate widgets & arguments

From `api/...Slate_Widget_Examples.md`:

- **Layout panels:** `SHorizontalBox`, `SVerticalBox` (slots arranged L→R / T→B),
  `SScrollBox` (vertical scroll), `SUniformGridPanel` (even grid, `Slot(col,row)`),
  `SWrapBox` (wraps at `PreferredWidth`), `SBorder` (a framed container).
- **Slot sizing:** **Auto Size** (default — fits content) vs **Fill Size**
  (`.FillWidth(coeff)` / `.FillHeight(coeff)` distributes leftover space),
  `.MaxSize`, `.Padding`, `.HAlign`/`.VAlign`.
- **Alignment:** `HAlign_Fill/Left/Center/Right`, `VAlign_Fill/Top/Center/Bottom`.
- **Common args on every widget:** `IsEnabled`, `ToolTipText`, `Cursor`,
  `Visibility` (`Visible`, `Collapsed` = no space, `Hidden` = keeps space,
  `HitTestInvisible` = art only).
- **Data views:** `SListView<T>`, `STreeView<T>`, `STileView<T>` — templated on a
  `TSharedPtr` item type, populated from a `TArray`, with `.OnGenerateRow`/
  `.OnGenerateTile` delegates building a widget per item.

```cpp
SNew(SHorizontalBox)
+ SHorizontalBox::Slot().FillWidth(2.f)[ /* ... */ ]
+ SHorizontalBox::Slot().FillWidth(1.f)[ /* ... */ ]
```

### Showing a Slate widget in-game

Add it to the game viewport (`api/...Using_Slate_In-Game.md`):

```cpp
// GEngine and GameViewport can both be NULL — always check.
if (GEngine && GEngine->GameViewport)
{
    GEngine->GameViewport->AddViewportWidgetContent(Hud);   // optional ZOrder arg
}
```

Remove with `RemoveViewportWidgetContent(Hud)` or
`RemoveAllViewportWidgets()`. Higher Z-order draws on top.

### Custom S-widget declaration

`SLATE_BEGIN_ARGS` / `SLATE_END_ARGS` declare a widget's named arguments
(`api/...Slate_Overview.md`):

```cpp
SLATE_BEGIN_ARGS(SMyButton) : _ShouldAppearHovered(false) {}
    SLATE_ATTRIBUTE(FText, Label)            // a bound/static value
    SLATE_EVENT(FOnClicked, OnClicked)       // a delegate
    SLATE_NAMED_SLOT(FArguments, Content)    // child content
    SLATE_ATTRIBUTE(bool, ShouldAppearHovered)
SLATE_END_ARGS()
```

`SLATE_ATTRIBUTE` = a `TAttribute<T>` (static value or a bound getter);
`SLATE_EVENT` = a delegate; `SLATE_NAMED_SLOT` = injectable child content.

### Styles

Slate widgets are styled via brushes/fonts (`FSlateBoxBrush`, `FSlateFontInfo`,
`FSlateBrush`) registered in a style set and referenced by name
(`api/...Slate_Overview.md`). UMG exposes most styling in the Details panel
instead; for code-only UI you set styles directly on the `SNew(...)` args.

### Menus / toolbars / context menus

Built with multibox builders (`api/...Slate_Widget_Examples.md`):
`FMenuBuilder`/`FMenuBarBuilder`/`FToolBarBuilder` (+ an `FUICommandList`), then
`.MakeWidget()`; pop a context menu with `FSlateApplication::Get().PushMenu(...)`.

---

## Part B — Localization (zh-Hans + pt-BR per benchmark)

The project benchmark targets **Simplified Chinese (zh-Hans)** and **Brazilian
Portuguese (pt-BR)** (~30% revenue uplift each). Localizable text in UE is **never
an `FString`** — it is an **`FText`**.

### FText vs FString

- **`FText`** — user-facing, localizable, culture-aware (numbers, dates, plurals).
  `UTextBlock::SetText` and Slate `.Text(...)` take `FText`. This is the *only*
  string type the localization pipeline gathers and translates.
- **`FString`** — mutable internal/working string. Never put `FString` in UI.
- **`FName`** — interned identifiers (asset/bone/widget names), not for display.

### Creating FText for UI

```cpp
// Inline, with explicit namespace + key:
Label->SetText(NSLOCTEXT("MainMenu", "Title", "My Game"));

// With a file-scoped namespace macro:
#define LOCTEXT_NAMESPACE "MainMenu"
Label->SetText(LOCTEXT("Play", "Play"));
#undef LOCTEXT_NAMESPACE     // undef at end of file

// Formatting (keeps order-independent, localizable arguments):
const FText Fmt = LOCTEXT("Ammo", "{0} / {1}");
Label->SetText(FText::Format(Fmt, FText::AsNumber(Cur), FText::AsNumber(Max)));

// Numbers / quantities the culture-correct way:
FText::AsNumber(1234);       // 1,234 or 1.234 per locale
FText::AsPercent(0.5f);
```

The **Namespace + Key** pair uniquely identifies a string for translators; the
literal is the source (English) text.

### String Tables — shared strings as an asset

For strings reused across many widgets, put them in a **String Table** asset and
reference by table-id + key (instead of inlining `LOCTEXT`). This centralizes
copy and is the recommended structure for sizeable UI. Reference from C++ with
`FText::FromStringTable(TableId, Key)` (or the `LOCTABLE` macro), and from the
designer via the Text field's String Table picker.

### Workflow to ship zh-Hans + pt-BR

1. Wrap **all** user-facing text in `FText` (`LOCTEXT`/`NSLOCTEXT`/String Tables).
2. **Localization Dashboard** (Tools → Localization Dashboard): add target
   cultures `zh-Hans` and `pt-BR`, **Gather** text, **Export** `.po`, hand to
   translators, **Import**, **Compile**.
3. Switch language at runtime by setting the culture (the engine then resolves
   `FText` through the compiled locale data).

### Fonts — CJK coverage matters

zh-Hans needs a font with **CJK glyph coverage** — the default Roboto does not
include Chinese glyphs, so text renders as boxes without a fallback. In UMG, set
the `TextBlock`'s **Font** to a Font asset (UMG uses **Runtime-cached** Font
assets) whose typeface covers your target languages, or configure a **font
fallback** (`api/Creating_User_Interfaces_Text_Formatting,_Localization,_and_Fonts_Fonts_Using_Fonts_with_UMG.md`).
Author at DPI scale 1.0; style fonts via color/material/outline as needed
(`api/...Fonts_Font_Materials_and_Outlines.md`). For sharp scaling consider
**Signed Distance Field** text rendering
(`api/...Signed_Distance_Field_Text_Rendering.md`).

### Rich text & formatting

For inline styles/markup within a single block, use the **Rich Text Block**
(`api/...Text_Formatting_UMG_Rich_Text_Block.md`) with a text style data table;
plain `TextBlock` covers the common case.
