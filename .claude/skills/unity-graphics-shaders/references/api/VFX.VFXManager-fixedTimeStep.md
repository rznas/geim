<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXManager-fixedTimeStep.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The fixed interval in which the frame rate updates. The tick rate is in seconds.

At run-time, Time.timeScale affects the `fixedDeltaTime` and `deltaTime` intervals. These values are less than or equal to VFXManager.maxDeltaTime.

The `fixedDeltaTime` interval can be an integer multiple of VFXManager.fixedTimeStep.
