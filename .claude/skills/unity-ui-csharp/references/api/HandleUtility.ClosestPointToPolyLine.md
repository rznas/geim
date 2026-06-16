<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.ClosestPointToPolyLine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the point on a polyline (in 3D space) which is closest to the current mouse position.

A polyline is simply a zigzag line defined by a set of points connected in sequence. The ClosestPointToPolyLine function takes the polyline defined by a point array and "flattens" it into screen space. The closest point between the flattened line and the current mouse position (also in screen space) is then found and converted back into a 3D point on the original 3D polyline. This is useful for Handle GUIs that involve manipulating an arbitrary 3D shape using the mouse; the 2D mouse movements are converted into 3D space in the familiar way used by Unity's built-in tools. An example of where this might be used is a racetrack defined by a set of waypoints - a position along the track line could be selected via the mouse using ClosestPointToPolyLine.
