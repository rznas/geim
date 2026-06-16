<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrameTimingManager.IsFeatureEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Whether frame timing statistics are enabled.

### Description

Check if frame timing statistics are enabled.

When enabled, the player collects CPU and GPU frame timing statistics that can be accessed using CaptureFrameTimings.

**Note:** The FrameTimingManager is always active on Development Player builds. However, to use this feature in release Player builds, go to **Edit** > **Project Settings** > **Player** and enable the **Frame Timing Stats** property. If you enable the feature in settings, it’ll remain active whether or not you need it at a specific point in time.
