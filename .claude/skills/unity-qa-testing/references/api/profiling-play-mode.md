<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/profiling-play-mode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Collect performance data in Play mode

Profile in Play mode to quickly test changes and monitor the performance of your application without having to rebuild your application every time.

To profile in Play mode:

1. Open the Profiler (**Window > Analysis > Profiler**)
2. Select the Target Selection dropdown, next to Record
3. Select **Play Mode**

Unity Profiler minimizes the overhead of profiling the Editor itself and represents any Editor-only activity when profiling Play mode as **EditorLoop** markers.

**Tip:** Whenever you profile Play mode, open it in a maximized view to run your application at a resolution closer to that of your target device. This directly affects performance issues such as those related to fill rate.

To make sure that windows other than Play mode or the Profiler don’t use up time on the render thread and GPU, which affects performance data, reduce the amount of open Unity Editor windows.

## Additional resources

- Collect performance data introduction
- Collect performance data on a target platform
- Collect performance data about the Unity Editor
