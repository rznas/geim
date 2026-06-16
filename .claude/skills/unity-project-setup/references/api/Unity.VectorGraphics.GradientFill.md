<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.GradientFill.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Fills a shape with a gradient.

Size of the fill is always assumed to cover the entire element's bounding box. Radial fills are centered in the element's bounding box. Its radii are half the bounding box dimensions in each direction. Linear fills start from the left edge to the right edge of the element's bounding box. 

 For more information, refer to work with vector graphics.

### Properties

| Property | Description |
| --- | --- |
| Addressing | The adressing mode (wrap, clamp or mirror) of this fill. |
| Mode | The filling method (non-zero or even-odd) of the fill. |
| Opacity | The opacity of the fill. |
| RadialFocus | A position within the unit circle (-1,1) where 0 falls in the middle of the fill. |
| Stops | An array of stops defining the gradient colors. |
| Type | The fill type (linear or gradient). |
