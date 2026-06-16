<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.PickGameObjectCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cam | The camera with which to render pickable objects. |
| layers | A layer mask specifying what layers to consider valid for picking. See also Camera.cullingMask. |
| position | A position in GUI coordinates. The top-left of the window is (0,0), and the bottom-right is (Screen.width, Screen.height). |
| ignore | An array of GameObjects that will not be considered when selecting the nearest GameObject. |
| filter | An array of GameObjects that will be tested for picking intersection. If this argument is not null, only GameObjects in the filter array will be selected. |
| materialIndex | Returns the index of the Renderer component in the material array that is closest to the specified position. If the picked object does not contain a MeshRenderer, or the picking intersection does not fall within a mesh boundary, this returns -1. |

### Description

This is the method definition for pickGameObjectCustomPasses.
