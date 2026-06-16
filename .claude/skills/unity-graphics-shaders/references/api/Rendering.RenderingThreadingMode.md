<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderingThreadingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the application's actual rendering threading mode.

The combination of Player Settings PlayerSettings.MTRendering, PlayerSettings.graphicsJobs and PlayerSettings.graphicsJobMode, as well as the target platform capabilities decides the rendering threading mode during the start of the Unity Editor or Standalone. After startup, you can use the property SystemInfo.renderingThreadingMode to query the rendering threading mode.
 Refer to the [Multithreaded Rendering & Graphics Jobs](https://unity3d.com/learn/tutorials/topics/best-practices/multithreaded-rendering-graphics-jobs) tutorial for a comparison of different rendering threading modes. 
 To specify whether graphics jobs threading mode is allowed in the Editor, use the **Allow Graphics Jobs in Editor** checkbox in the Jobs panel of the Preferences Window. Enabling this option lets Unity use the graphics jobs threading mode in the Editor when graphics jobs is enabled in Player Settings.

### Properties

| Property | Description |
| --- | --- |
| Direct | Use the Direct enum to directly render your application from the main thread. |
| SingleThreaded | Use SingleThreaded for internal debugging. It uses only a single thread to simulate RenderingThreadingMode.MultiThreaded. |
| MultiThreaded | Generates intermediate graphics commands via the main thread. The render thread converts them into low-level platform API graphics commands. |
| LegacyJobified | Generates intermediate graphics commands via several worker threads. A single render thread then converts them into low-level platform API graphics commands. |
| NativeGraphicsJobs | Main thread generates intermediate graphics commands. Render thread converts them into low-level platform API graphics commands. Render thread can also dispatch graphics jobs to several worker threads. |
| NativeGraphicsJobsWithoutRenderThread | Generates intermediate graphics commands via several worker threads and converts them into low-level platform API graphics commands. |
| NativeGraphicsJobsSplitThreading | Generates intermediate graphics commands via several worker threads and render thread dispatches several worker threads to convert them into low-level platform API graphics commands. |
