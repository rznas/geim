<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransformUtility.FlipLayoutOnAxis.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rect | The RectTransform to flip. |
| keepPositioning | Flips around the pivot if true. Flips within the parent rect if false. |
| recursive | Flip the children as well? |
| axis | The axis to flip along. 0 is horizontal and 1 is vertical. |

### Description

Flips the alignment of the RectTransform along the horizontal or vertical axis, and optionally its children as well.

This flips the alignment of the RectTransform. Any actual content such as images or text will not be flipped but may aligned differently. An example usage is to instantiate a control designed in a left to right manner (like a horizontal slider where 0 is to the left) and flip it horizontally so the layout becomes suitable for use in the opposite direction (like a horizontal slider where 0 is to the right).

When used with the recursive argument set to true, the children are always flipped with the keepPositioning option set to false so that they properly follow the flip of the parent.
