<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.ExternalGPUProfiler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ExternalGPUProfiler API allows developers to programatically take GPU frame captures in conjunction with supported external GPU profilers.
 GPU frame captures can be used to both analyze performance and debug graphics related issues.

GPU captures can be taken when running using the API both in Editor and in standalone development builds.
 The ExternalGPUProfiler API supports both PIX and RenderDoc.


**PIX Specific Support**
 Support for PIX is only available on Windows desktop when using the DirectX 12 rendering API.
 **NOTE:** The entire editor will be captured when capturing a frame in editor.

**RenderDoc Specific Support**
 Support for RenderDoc is available when running on both Windows and Linux desktop.
 Supported rendering APIs include DirectX 12, DirectX 11, and Vulkan.
 **NOTE:** Only the game view will be captured when capturing a frame in editor.

### Static Methods

| Method | Description |
| --- | --- |
| BeginGPUCapture | Begins the current GPU frame capture in the external GPU profiler. |
| EndGPUCapture | Ends the current GPU frame capture in the external GPU profiler. |
| IsAttached | Returns true when a development build is launched by an external GPU profiler. |
