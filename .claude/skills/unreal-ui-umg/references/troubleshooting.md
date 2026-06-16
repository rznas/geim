# UMG / Slate troubleshooting

Symptom → cause → fix, for the common UMG-from-C++ failures. Grounded in the
embedded UE 5.6/5.7 docs (`references/api/`); **not compile-tested** (no engine).

---

## BindWidget pointer is `nullptr` at runtime

**Cause:** `UPROPERTY(meta=(BindWidget))` resolves by **exact, case-sensitive
name**. The property name doesn't match the widget's name in the Widget Blueprint.

**Fix:**
- Rename so the C++ property and the designer widget have the **identical** name
  (`StartButton` property ↔ widget named `StartButton`).
- The widget must exist in the Widget Blueprint that is **reparented to this C++
  class** — a sibling/unrelated Widget Blueprint won't bind.
- Plain `BindWidget` is required-to-exist (editor compile error if missing); use
  `meta=(BindWidgetOptional)` only if the widget may legitimately be absent.
- Always `if (Ptr)` guard — and never assume non-null in the constructor (widgets
  aren't bound that early; bind/use them in `NativeConstruct`).

---

## Nothing shows on screen

**Cause:** You created the widget but never added it to the viewport. The docs are
explicit that **both** Create Widget *and* Add to Viewport are required
(`api/...Displaying_Your_UI_Creating_Widgets.md`).

**Fix:**
```cpp
UMyWidget* W = CreateWidget<UMyWidget>(GetWorld(), WidgetClass);
W->AddToViewport();         // <- the missing call
```
Also check: the widget's `Visibility` isn't `Collapsed`/`Hidden`; the widget isn't
zero-size or behind another full-screen widget (lower Z-order); `WidgetClass`
actually points at your Widget Blueprint class (a null `TSubclassOf` → `CreateWidget`
returns null).

---

## Clicks / input do nothing

**Cause:** The player controller is in **Game Only** input mode, or the cursor is
hidden, or a transparent widget is eating the hit.

**Fix** (`api/...Displaying_Your_UI_Creating_Widgets.md`):
```cpp
PlayerController->SetInputMode(FInputModeGameAndUI());  // or FInputModeUIOnly
PlayerController->SetShowMouseCursor(true);
```
- A button's handler must be a `UFUNCTION()` bound with `AddDynamic` — a plain
  C++ method won't bind to the dynamic `OnClicked` delegate.
- A widget above the button with `Visibility = Visible` (not `HitTestInvisible`)
  will intercept the click — set overlays/decorative art to `HitTestInvisible` or
  `SelfHitTestInvisible` (`api/...Slate_Widget_Examples.md` → Visibility).
- Use **UI Only** sparingly — it consumes *all* input and disables game controls.

---

## Text won't localize / shows wrong / `SetText` won't compile

**Cause:** Using `FString` for user-facing text. `SetText` takes `FText`, and only
`FText` is gathered by the localization system.

**Fix:** Build text with `NSLOCTEXT`/`LOCTEXT`/`FText::Format`:
```cpp
Label->SetText(NSLOCTEXT("HUD", "Score", "Score"));
// NOT: Label->SetText(FText::FromString(MyFString)); for translatable copy
```
- `FText::FromString` exists but produces **non-localizable** text — only use it
  for genuinely dynamic, non-translated values.
- If zh-Hans renders as boxes/tofu: the font lacks CJK glyphs — assign a Font asset
  with CJK coverage or a fallback (`api/...Fonts_Using_Fonts_with_UMG.md`).
- After translating, ensure you **Gather → Export → Import → Compile** the culture
  in the Localization Dashboard, and the runtime culture is set.

---

## Widget cropped / off-screen on a different resolution or aspect ratio

**Cause:** Anchored to one corner but positioned toward another, so it slides off
on other aspect ratios (`api/...UMG_Editor_Reference_Anchors.md`).

**Fix:**
- Anchor each element to the **corner/edge it sits near** (bottom-right HUD →
  anchor `Max(1,1)`); use a split anchor (Min≠Max) to **stretch** a bar with the
  screen.
- Configure **DPI Scaling** (Project Settings → User Interface): pick a Scale Rule
  and tune the DPI Curve; author every widget at DPI scale **1.0** and the **same**
  target resolution (`api/...Scaling_UI_for_Different_Devices.md`,
  `api/...UMG_Best_Practices.md`).

---

## Can't change a widget's position/size from C++ (or it crashes)

**Cause:** Setting layout on the wrong slot type. A child's slot type depends on
its **parent panel** — a Canvas child has a `UCanvasPanelSlot`, a grid child a
`UGridSlot` (`api/...UMG_Slots.md`).

**Fix:** Cast `Widget->Slot` to the correct type first, and null-check the cast:
```cpp
if (UCanvasPanelSlot* S = Cast<UCanvasPanelSlot>(W->Slot))
{
    S->SetPosition(FVector2D(20, 20));
    S->SetAnchors(FAnchors(0.f, 0.f));
}
```
- A child of a **Box/Grid** panel can't be positioned absolutely — set its slot's
  size rule (**Auto**/**Fill**) / row-column instead.
- Casting a Canvas slot as a Grid slot returns null → guard before use.

---

## Bound property stops updating after I call `Set...` on it

**Cause:** Calling `SetPercent`/`SetText`/etc. directly on a widget property that
has a **Property/Function Binding** **breaks the binding**
(`api/...Property_Binding.md`).

**Fix:** Pick one mechanism per property — either bind it *or* drive it with
`Set...`, not both. For non-trivial UI prefer the **event-driven** update path
(update only on change via an Event Dispatcher / delegate) over per-frame Bindings
or Tick (`api/...Driving_UI_Updates_with_Events.md`, `api/...UMG_Best_Practices.md`).

---

## HUD updates tank the framerate

**Cause:** Per-frame Function/Property Bindings (or Event Tick) re-evaluating
every frame even when nothing changed (`api/...Driving_UI_Updates_with_Events.md`).

**Fix:**
- Switch to **event-driven** updates (broadcast a delegate when the value changes;
  the widget updates only then).
- Wrap rarely-changing sub-trees in an **Invalidation Box** to cache their Slate
  draw (`api/...Widget_Type_Reference_Invalidation_Box.md`,
  `api/...Optimizing_User_Interfaces_UI_Invalidation.md`).
- Prefer **textures** over **materials** for UI art
  (`api/...UMG_Best_Practices.md`).
- Inspect with the **Widget Reflector** (`Ctrl+Shift+W`) / **Console Slate
  Debugger** (`api/...Testing_and_Debugging*`).

---

## Slate headers won't compile / `SNew` unknown

**Cause:** Missing module dependencies.

**Fix:** Add `"Slate"`, `"SlateCore"` to `PrivateDependencyModuleNames` and
`"InputCore"` (public) — and `"UMG"` (public) if you use `UUserWidget`/`UButton`
etc. — in your `.Build.cs`, then regenerate project files
(`api/...Using_Slate_in_a_Project.md`). (Module/`.Build.cs` setup lives in
**unreal-project-setup**.)

---

## `GEngine->GameViewport` crash when adding a Slate widget

**Cause:** `GEngine` and `GameViewport` can be `NULL`
(`api/...Using_Slate_In-Game.md`).

**Fix:** Always guard: `if (GEngine && GEngine->GameViewport) { ... }` before
`AddViewportWidgetContent`.

---

## Render Transform scale doesn't scale across resolutions

**Cause:** Render Transforms are **not** part of layout — good for transient
animation, wrong for permanent sizing (`api/...UMG_Best_Practices.md`).

**Fix:** Wrap the widget in a **Scale Box** for permanent layout scaling; reserve
Render Transforms for animated/temporary effects.
