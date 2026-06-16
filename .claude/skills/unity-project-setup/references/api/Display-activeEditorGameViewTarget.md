<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Display-activeEditorGameViewTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the Editors active GameView display target.

Returns the last selected GameView's display target.

At runtime will return -1 as there is no GameView. To get the display index at runtime you can use Display.RelativeMouseAt and look at the z value.
