<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.Provider.XRStats.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides timing and other statistics from XR subsystems.

The XRStats class allows XR SDK providers to expose timing and other statistics related to their XR subsystems. Such statistics can be used by XR application developers for profiling and making dynamic performance adjustments. For example, an application could dynamically adjust properties like XRSettings.eyeTextureResolutionScale or XRSettings.renderViewportScale at run time to improve performance based on statistics provided by an XR subsystem.

`Note:` XR SDK providers can use this class to provide their own, device-specific class for reporting statistics. XR application developers should not need to use the XRStats class directly.

### Static Methods

| Method | Description |
| --- | --- |
| TryGetStat | Retrieve a statistic for an XR subsystem. |
