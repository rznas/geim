<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIElement.HitTest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is a point on screen inside the element?

Returns true if the `screenPosition` is contained in this GUIElement. `screenPosition` is specified in screen coordinates, like the values returned by the Input.mousePosition property. If no `camera` is given a camera filling the entire game window will be assumed.

Note that if the position is inside the element, `true` will be returned even if the game object belongs to Ignore Raycast layer (normally mouse events are not sent to Ignore Raycast objects).

Additional resources: GUILayer.HitTest.
