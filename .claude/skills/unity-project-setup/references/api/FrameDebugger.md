<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrameDebugger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the Frame Debugger from a script.

The Frame Debugger lets you freeze playback for a running game on a particular frame and view the individual draw calls that are used to render that frame. In some cases it can be useful to know whether the Frame Debugger is currently active; you can use FrameDebugger.enabled to query that. Most common use case is to pause or disable some rendering techniques or effects that alter their behavior every frame. For example, various graphics techniques that jitter the camera projection every frame would likely benefit from disabling the jitter while the Frame Debugger is active.

Additional resources: Frame Debugger documentation.

### Static Properties

| Property | Description |
| --- | --- |
| enabled | Queries whether the Frame Debugger is enabled. |
