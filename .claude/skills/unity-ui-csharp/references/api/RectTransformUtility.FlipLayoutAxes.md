<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransformUtility.FlipLayoutAxes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rect | The RectTransform to flip. |
| keepPositioning | Flips around the pivot if true. Flips within the parent rect if false. |
| recursive | Flip the children as well? |

### Description

Flips the horizontal and vertical axes of the RectTransform size and alignment, and optionally its children as well.

This swaps the horizontal and vertical axis in the size and alignment of the RectTransform. This can also be thought of as a diagonal flip. Any actual content such as images or text will not be flipped or rotated but may be resized and aligned differently.

An example usage is to instantiate a control designed for alignment along one axis (like a horizontal slider) and flip the axes so the layout becomes suitable for use along the other axis (like a vertical slider).

When used with the recursive argument set to true, the children are always flipped with the keepPositioning option set to false so that they properly follow the flip of the parent.
