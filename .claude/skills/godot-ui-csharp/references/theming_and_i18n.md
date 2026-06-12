# Theming, StyleBox & localization (Godot 4.6)

## Theme resource

A `Theme` defines, per Control type, the default colors / fonts / font sizes /
constants / `StyleBox`es. Assign one to a top Control's `Theme` property and it
cascades to all descendants — style once, not per node.

Build it in the editor's Theme editor (saved as `.tres`) and load it, or
construct in code. For one-off tweaks on a single control, use **theme
overrides** (verified C#):

```csharp
var label = GetNode<Label>("Title");
label.AddThemeColorOverride("font_color", new Color(1, 0.8f, 0.2f));
label.AddThemeFontSizeOverride("font_size", 48);

var panel = GetNode<Panel>("Bg");
panel.AddThemeStyleboxOverride("panel", MakeRoundedBox());
```

The override name (`"font_color"`, `"panel"`, `"normal"`) is the theme item name
for that control type — see each control's "Theme Properties" in the class ref.

## StyleBoxFlat (rounded panels, borders, the workhorse)

```csharp
private StyleBoxFlat MakeRoundedBox() => new StyleBoxFlat
{
    BgColor = new Color(0.1f, 0.1f, 0.15f, 0.9f),
    CornerRadiusTopLeft = 8, CornerRadiusTopRight = 8,
    CornerRadiusBottomLeft = 8, CornerRadiusBottomRight = 8,
    BorderWidthBottom = 2, BorderColor = new Color(0.4f, 0.4f, 0.6f),
    ContentMarginLeft = 12, ContentMarginRight = 12,
    ContentMarginTop = 8, ContentMarginBottom = 8,
};
```

Apply a button's states by overriding `normal` / `hover` / `pressed` /
`disabled` styleboxes (Button theme items). Fonts: a `FontFile` resource
assigned via the theme's default font or a `font` override.

## Localization (i18n)

Target languages for this project: **Simplified Chinese (`zh_CN`)** and
**Brazilian Portuguese (`pt_BR`)** (each ≈ +30% revenue per the benchmark).

### Translatable strings

- **UI text auto-translates**: a `Label`/`Button`'s `Text` is run through
  translation automatically. Set the `Text` to a **key** (e.g. `MENU_START`) and
  provide translations; the control shows the localized string.
- **In code**, wrap strings with `Tr` (C# PascalCase for GDScript's `tr`):
  `Tr("MENU_START")`. Note: it's `Tr(...)` in C#, **not** lowercase `tr(...)` —
  that won't compile (`CS0103: 'tr' does not exist`).
- Use stable keys, not English sentences, so wording changes don't break
  translations.

### Translation files

Author translations as a CSV spreadsheet (one column per locale) — Godot imports
it into per-locale `.translation` resources — or use gettext `.po` files. Then
register them in `project.godot`:

```
[internationalization]

locale/translations=PackedStringArray("res://i18n/ui.en.translation", "res://i18n/ui.zh_CN.translation", "res://i18n/ui.pt_BR.translation")
```

CSV format (`res://i18n/ui.csv`, imported automatically):
```
keys,en,zh_CN,pt_BR
MENU_START,Start,开始,Iniciar
MENU_QUIT,Quit,退出,Sair
```

### Switching language at runtime

```csharp
TranslationServer.SetLocale("pt_BR");   // UI re-translates on next draw
string cur = TranslationServer.GetLocale();
```

A settings dropdown maps options → locale codes and calls `SetLocale`.

### CJK fonts

Simplified Chinese needs a font with CJK glyphs (e.g. Noto Sans CJK SC). The
default font lacks them — assign a CJK-capable `FontFile` in the theme, or
glyphs render as boxes. Test with `--editor-pseudolocalization` or by switching
locale headlessly.
