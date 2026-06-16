<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/profiler-standalone-process.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Running the Profiler in its own process

To get better Profiler data when you target the Unity Editor or Play mode, use the Standalone Profiler, which launches the Profiler in its own dedicated process. The Standalone Profiler reduces overhead, because the Profiler isn’t profiling itself or sharing a process with your application or the Editor. The functionality and controls of the Profiler remain the same as when you run the Profiler in the same process as the Editor.

## Use the Standalone Profiler

To use the Standalone Profiler:

1. Go to **Window > Analysis > Profiler (Standalone process)**
2. Unity opens the Profiler outside of the Editor’s process in its own window

The Standalone Profiler takes longer to start up than opening it in the same process as the Editor. You can’t dock any Editor windows that are connected to the separate process to the main process’s windows.

When you restart the Editor, Unity doesn’t re-open the windows in the out-of-process Profiler.

## Additional resources

- Profiler window reference
- Collect performance data in Play mode
- Collect performance data about the Unity Editor
