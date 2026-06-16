<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.ClosestPointToArc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the point on an arc (in 3D space) which is closest to the current mouse position.

This function takes the arc defined by its parameters and "flattens" it into screen space. The closest point between the flattened arc and the current mouse position (also in screen space) is then found and converted back into a 3D point on the original 3D arc. This is useful for Handle GUIs that involve rotation of an object around the center of the arc; the 2D mouse movements are converted into 3D space in the familiar way used by Unity's built-in tools.
