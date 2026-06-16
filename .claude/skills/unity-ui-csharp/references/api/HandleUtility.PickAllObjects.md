<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.PickAllObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position in screen coordinates. The top-left of the window is (0,0), and the bottom-right is (Screen.width, Screen.height). |
| results | The output list to populate with all GameObjects at the specified position. |

### Description

Creates a list of all GameObjects under the specified position in screen coordinates.

`HandleUtility.PickAllObjects` must not be called during a repaint. In most cases, it is appropriate to call during EventType.MouseDown or EventType.MouseUp. A common use would be to pick all GameObjects at the current cursor position.
