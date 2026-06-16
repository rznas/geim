<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.PerformanceBottleneck.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The performance bottleneck enum describes what is currently limiting the system.

### Properties

| Property | Description |
| --- | --- |
| Unknown | Framerate bottleneck is unknown. |
| CPU | Framerate is limited by CPU processing. |
| GPU | Framerate is limited by GPU processing. |
| TargetFrameRate | Framerate is limited by Application.targetFrameRate. In this case, you should consider lowering the application's performance requirements (see IDevicePerformanceControl.AutomaticPerformanceControl). |
