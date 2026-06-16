<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ColorUsageAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to configure the usage of the ColorField and Color Picker for a color.

Use this attribute on a Color to configure the Color Field and Color Picker to show/hide the alpha value and whether to treat the color as a HDR color or as a normal LDR color.

### Properties

| Property | Description |
| --- | --- |
| hdr | If set to true the Color is treated as a HDR color. |
| showAlpha | If false then the alpha bar is hidden in the ColorField and the alpha value is not shown in the Color Picker. |

### Constructors

| Constructor | Description |
| --- | --- |
| ColorUsageAttribute | Attribute for Color fields. Used for configuring the GUI for the color. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
