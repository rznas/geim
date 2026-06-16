<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.FillGradient.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes a fill gradient used for rendering filled shapes in Painter2D. The start, end , center, focus, and radius properties are pixel coordinate relative to the painter's coordinate system.

This struct encapsulates the data required to define a gradient fill, including the gradient itself, the type of gradient (linear or radial), and the parameters that control the direction or focus of the gradient.

### Properties

| Property | Description |
| --- | --- |
| addressMode | Specifies how the gradient is sampled when UV coordinates are outside the [0, 1] range. |
| center | The center point for a radial gradient. |
| end | The end point for a linear gradient. |
| focus | The Focus point for radial gradient. |
| gradient | The color gradient used for the fill. |
| gradientType | The type of gradient to use (linear or radial). |
| radius | The radius for a radial gradient. |
| start | The start point for a linear gradient. |

### Static Methods

| Method | Description |
| --- | --- |
| MakeLinearGradient | Helper method to create a linear gradient fill, using startColor and endColor to define the gradient. |
| MakeRadialGradient | Helper method to create a radial gradient fill, using startColor and endColor to define the gradient. |
