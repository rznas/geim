<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-mousePresent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates if a mouse device is detected.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

On Windows, Android and Metro platforms, this function does actual mouse presence detection, so may return true or false. On Linux, Mac, WebGL, this function will always return true. On iOS and console platforms, this function will always return false.
