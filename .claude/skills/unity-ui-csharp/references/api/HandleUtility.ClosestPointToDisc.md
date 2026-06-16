<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.ClosestPointToDisc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the point on an disc (in 3D space) which is closest to the current mouse position.

This function takes the disc defined by its parameters and "flattens" it into screen space. The closest point between the flattened disc and the current mouse position (also in screen space) is then found and converted back into a 3D point on the original 3D disc. This is useful for Handle GUIs that involve rotation of an object around the center of the disc; the 2D mouse movements are converted into 3D space in the familiar way used by Unity's built-in tools.
