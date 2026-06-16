<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Painter2D.SaveToVectorImage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vectorImage | The VectorImage object that will be initialized with this painter. This object should not be null. |

### Returns

**bool** True if the VectorImage initialization succeeded. False otherwise.

### Description

Saves the content of this Painter2D to a VectorImage object.

The size and content of the vector image will be determined from the bounding-box of the visible content of the painter object. Any offset of the visible content will not be saved in the vector image.
