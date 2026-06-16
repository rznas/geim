<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CameraEvent.AfterGBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

After deferred rendering G-buffer is rendered.

Will be called immediately after all objects are rendered into G-buffer. The G-buffer render target(s) will be active, however they will not be set up as shader properties yet.

Generally the BeforeLighting event is probably a better place to start doing custom G-buffer modifications.
