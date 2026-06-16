<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ReflectionProbeRefreshMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An enum describing the way a real-time reflection probe refreshes in the Player.

### Properties

| Property | Description |
| --- | --- |
| OnAwake | Causes the probe to update only on the first frame it becomes visible. The probe will no longer update automatically, however you may subsequently use RenderProbe to refresh the probeAdditional resources: ReflectionProbe.RenderProbe. |
| EveryFrame | Causes Unity to update the probe's cubemap every frame. Note that updating a probe is very costly. Setting this option on too many probes could have a significant negative effect on frame rate. Use time-slicing to help improve performance.Additional resources: ReflectionProbeTimeSlicingMode. |
| ViaScripting | Sets the probe to never be automatically updated by Unity while your game is running. Use this to completely control the probe refresh behavior by script.Additional resources: ReflectionProbe.RenderProbe. |
