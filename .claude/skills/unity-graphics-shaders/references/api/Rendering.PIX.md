<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.PIX.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides an interface to control GPU frame capture in Microsoft's PIX software.

### Static Methods

| Method | Description |
| --- | --- |
| BeginGPUCapture | Begins a GPU frame capture in PIX. If not running via PIX, or as a development build, then it has no effect. |
| EndGPUCapture | Ends the current GPU frame capture in PIX. If not running via PIX, or as a development build, then it has no effect. |
| IsAttached | Returns true if running via PIX and in a development build. |
