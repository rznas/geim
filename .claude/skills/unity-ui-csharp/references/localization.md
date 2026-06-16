# Localization — Unity Localization package (zh-Hans + pt-BR)

Never hardcode user-facing strings. Unity's **Localization** package
(`com.unity.localization`) drives translated text for both UI Toolkit and uGUI.
The project benchmark (`docs/benchmarks/main.md`) targets **Simplified Chinese
(zh-Hans)** and **Brazilian Portuguese (pt-BR)** — each cited at roughly +30%
revenue uplift — so plan for them from the first menu.

Grounded in `api/com.unity.localization.md` (Localization package 1.5.x for Unity
6000.x) and the `LocalizationAsset` ScriptReference pages. Doc-sourced, not
compile-tested.

## What the package gives you (`api/com.unity.localization.md`)

- **String localization** — different strings per locale, organized in **String
  Tables**. **Smart Strings** add logic (placeholders, plurals).
- **Asset localization** — swap a texture/audio/model per locale.
- **Pseudo-localization** — test layout expansion before real translations exist.
- **Import/export** to **CSV, XLIFF, and Google Sheets** — the handoff format for
  external translators.

It is an installable package (not built in): add `com.unity.localization` via the
Package Manager, then create a **Localization Settings** asset
(Edit > Project Settings > Localization) and add **Locales**.

## Setup outline

1. Install `com.unity.localization` (Package Manager).
2. Create **Localization Settings** and add Locales:
   - **English (en)** — source/dev locale
   - **Chinese (Simplified) (zh-Hans)**
   - **Portuguese (Brazil) (pt-BR)**
3. Create a **String Table Collection** (e.g. `UI`) with a column per locale.
4. Add entries keyed by a stable string (e.g. `menu.play`, `menu.quit`,
   `hud.score`) and fill each locale's translation.
5. Reference entries from the UI (below).

## Driving translated text

### uGUI

Add a **LocalizeStringEvent** component next to the `Text` / `TMP_Text`, point it
at the table + entry; it updates the text when the locale changes. Or fetch in
C#:

```csharp
using UnityEngine.Localization.Settings;

// Async fetch of a localized string for the active locale:
var op = LocalizationSettings.StringDatabase.GetLocalizedStringAsync("UI", "menu.play");
op.Completed += handle => myText.text = handle.Result;
```

### UI Toolkit

Bind a `Label` to a localized string (the package provides UI Toolkit bindings),
or set `label.text` from the same `GetLocalizedStringAsync` result. Keep the
**name** in your UXML stable and set the text from the localized value in
`OnEnable` / when the locale changes.

### Switching language at runtime

```csharp
using UnityEngine.Localization.Settings;

// Set the active locale by its code; all LocalizeStringEvents/bindings refresh.
var locale = LocalizationSettings.AvailableLocales.GetLocale("zh-Hans");
LocalizationSettings.SelectedLocale = locale;
```

(`LocalizationAsset.GetLocalizedString` / `SetLocalizedString` exist on the
lower-level `LocalizationAsset` per `api/LocalizationAsset.*.md`, but most UI
work goes through `LocalizationSettings.StringDatabase` and the
`LocalizeStringEvent` component.)

## CJK fonts — the gotcha for zh-Hans

Latin fonts have no Chinese glyphs, so Simplified Chinese renders as **tofu
boxes** (□□□) unless you supply a CJK-capable font.

- **UI Toolkit**: assign a font asset with CJK coverage (e.g. Noto Sans SC) in
  the USS / PanelSettings theme, and set a **font fallback** so missing glyphs
  fall through to it. TextCore handles fallback chains.
- **uGUI / TextMeshPro**: build (or use a dynamic) TMP **Font Asset** that
  includes the needed CJK range, and add it to the **fallback list** of your
  primary font asset. Static atlases for the full CJK range are huge — use a
  **dynamic** font asset (renders glyphs on demand) for Chinese.
- pt-BR is covered by standard Latin-1 fonts; only accents (ã, ç, õ) are needed —
  any reasonable Latin font has them.

## Practical rules

- **Key, don't translate inline.** Author UI against keys (`menu.play`), never
  literal English in code/UXML.
- **Leave slack in layouts.** German/Portuguese strings run longer than English;
  flexbox (UI Toolkit) and stretch anchors (uGUI) absorb this better than
  fixed-width labels.
- **Export CSV/XLIFF** for translators rather than editing tables by hand.
- **Pseudo-localize early** to catch clipping and concatenation bugs before real
  translations arrive.
