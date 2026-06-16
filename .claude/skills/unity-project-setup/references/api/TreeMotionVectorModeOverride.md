<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TreeMotionVectorModeOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for motion vector rendering on the terrain.

### Properties

| Property | Description |
| --- | --- |
| CameraMotionOnly | Use only camera movement to track motion for all SpeedTree models painted on the terrain. |
| PerObjectMotion | Use a specific pass to track motion for all SpeedTree models painted on the terrain. |
| ForceNoMotion | Don't track motion for SpeedTree models painted on the terrain. Note that models are still rendered in the object motion vector pass, so the CPU performance is similar to `Per Object Motion`. |
| InheritFromPrototype | For each SpeedTree model painted on the terrain, inherit the motion vector rendering mode from the import settings, instead of a terrain-global value. |
