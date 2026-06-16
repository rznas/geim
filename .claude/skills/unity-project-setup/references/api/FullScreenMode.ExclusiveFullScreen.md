<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FullScreenMode.ExclusiveFullScreen.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Windows platforms only. Sets your application so it has sole full-screen use of a display.

Unlike FullScreenMode.FullScreenWindow, this mode changes the operating system resolution of the display to match the application's chosen resolution. On platforms other than Windows, this mode falls back to FullScreenMode.FullScreenWindow.

**Notes**:

- This mode isn't supported in applications that use Vulkan graphics API.
- Using this mode might negatively affect performance of your application. Consider using other full-screen modes, such as FullScreenMode.FullScreenWindow.
- DirectX 11 doesn't support HDR Output in this mode. For HDR Output on DirectX 11, use FullScreenMode.FullScreenWindow instead.
- DirectX 12 applications use borderless fullscreen mode by default. Windows optimizes borderless fullscreen applications when Fullscreen Optimizations are enabled in the OS settings. For more information, refer to the [Microsoft documentation](https://devblogs.microsoft.com/directx/demystifying-full-screen-optimizations/).
