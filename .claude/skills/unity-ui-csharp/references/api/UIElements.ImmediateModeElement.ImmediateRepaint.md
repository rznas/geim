<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ImmediateModeElement.ImmediateRepaint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Invoked during the repaint phase.

Here it is safe to use any rendering calls using the immediate Graphics api, eg: Graphics.DrawTexture(contentRect, image); Graphics.DrawMesh, etc The current transform matrix is set up so (0,0) correspond to the top-left corner of the element. For IMGUI usage, please use the IMGUIContainer element.
