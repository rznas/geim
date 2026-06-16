<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color32.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Representation of RGBA colors in 32 bit format.

Each color component is a byte value with a range from 0 to 255.

Components (r,g,b) define a color in RGB color space. Alpha component (a) defines transparency - alpha of 255 is completely opaque, alpha of zero is completely transparent.

### Properties

| Property | Description |
| --- | --- |
| a | Alpha component of the color. |
| b | Blue component of the color. |
| g | Green component of the color. |
| r | Red component of the color. |
| this[int] | Access the red (r), green (g), blue (b), and alpha (a) color components using [0], [1], [2], [3] respectively. |

### Constructors

| Constructor | Description |
| --- | --- |
| Color32 | Constructs a new Color32 with given r, g, b, a components. |

### Public Methods

| Method | Description |
| --- | --- |
| ToString | Returns a formatted string for this color. |

### Static Methods

| Method | Description |
| --- | --- |
| Lerp | Linearly interpolates between colors a and b using the interpolation ratio t. |
| LerpUnclamped | Linearly interpolates between colors a and b using the interpolation ratio t. |

### Operators

| Operator | Description |
| --- | --- |
| Color | Color32 can be implicitly converted to and from Color. |
| Color32 | Color32 can be implicitly converted to and from Color. |
