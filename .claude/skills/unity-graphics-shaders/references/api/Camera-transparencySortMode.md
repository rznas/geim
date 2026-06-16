<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-transparencySortMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transparent object sorting mode.

By default, perspective Cameras sort objects based on distance from Camera position to the object pivot; and orthographic Cameras sort based on distance along the view direction.

If you're making a 2D game with a perspective Camera, you might want to use TransparencySortMode.Orthographic sort mode so that objects are sorted based on distance along the Camera's view.

Additional resources: TransparencySortMode enum, opaqueSortMode.
