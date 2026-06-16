<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility.AlignRectToDevice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| local | The local space rectangle that needs to be processed. |
| widthInPixels | Width, in pixel units, of the axis-aligned bounding box that encompasses the aligned points. |
| heightInPixels | Height, in pixel units, of the axis-aligned bounding box that encompasses the aligned points. |

### Returns

**Rect** The aligned rectangle in local space.

### Description

Align a local space rectangle to the pixel grid.

Aligns the top-left and bottom-right corners of the provided local space rectangle to the pixel grid and returns the local space axis-aligned bounding box that encompasses those points.
