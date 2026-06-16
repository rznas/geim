<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebGLPowerPreference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An enum containing different power preference hints for the WebGL context.

This enum is used within the WebGL platform to hint to the underlying WebGL implementation how to choose its GPU configuration in multi-gpu systems.

### Properties

| Property | Description |
| --- | --- |
| Default | The WebGL implementation is left to decide which GPU configuration is most suitable. |
| LowPower | Requests the WebGL implementation prioritizes power savings. |
| HighPerformance | Requests the WebGL implementation prioritizes rendering performance. |
