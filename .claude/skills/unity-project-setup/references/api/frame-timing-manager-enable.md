<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/frame-timing-manager-enable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Enable frame timing statistics for release builds

`FrameTimingManager` is disabled by default for release builds due to the GPU measurement overhead on some platforms and graphics APIs such as OpenGL ES.

`FrameTimingManager` is always active in **development builds** and the Unity Editor.

To enable frame timing statistics for release builds:

1. Go to **Edit** > **Project Settings** > **Player**.
2. Go to **Other Settings** > **Rendering**.
3. Enable the **Frame Timing Stats** property.

**Tip:** If you use `ProfilerRecorder` to collect data, then you don’t need to enable the **Frame Timing Stats** property.

If you use the OpenGL platform, you also need to enable the **OpenGL: Profiler GPU Recorders** property to measure GPU usage. To do this:

1. Go to **Edit** > **Project** > **Settings** > **Player**.
2. Go to **Other Settings** > **Rendering**.
3. Enable the **OpenGL: Profiler GPU** property.

## Additional resources

- Get frame timing data
- Read frame timing data with ProfilerRecorder
