<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-eventMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mask to select which layers can trigger events on the camera.

Just as the camera's `cullingMask` determines if the camera is able to see the GameObject, the event mask determines whether the GameObject is able to receive mouse events. Only objects visible by the camera and whose `layerMask` overlaps with the camera's `eventMask` will be able to receive OnMouseXXX events. Setting this mask to zero will improve performance and is recommended if you don't use OnMouseXXX events. See Layers for more information.

Additional resources: MonoBehaviour.OnMouseEnter, MonoBehaviour.OnMouseExit, MonoBehaviour.OnMouseOver, MonoBehaviour.OnMouseDown, MonoBehaviour.OnMouseOver, MonoBehaviour.OnMouseUp, MonoBehaviour.OnMouseDrag, MonoBehaviour.OnMouseUpAsButton.
