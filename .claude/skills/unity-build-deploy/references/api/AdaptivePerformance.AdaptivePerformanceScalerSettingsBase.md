<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceScalerSettingsBase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Settings of indexer system.

### Properties

| Property | Description |
| --- | --- |
| enabled | Returns true if Indexer was active, false otherwise. |
| maxBound | Maximum value for the scale boundary. |
| maxLevel | Maximum level for the scaler. This is tied to the implementation of the scaler to divide the levels into concrete steps. |
| minBound | Minimum value for the scale boundary. |
| name | Returns the name of the scaler. |
| scale | Scale to control the quality impact for the scaler. No quality change when 1, improved quality when bigger 1, and lowered quality when smaller 1. |
| target | Application bottleneck that the scaler targets. The target selected has the most impact on the quality control of this scaler. |
| visualImpact | Visual impact the scaler has on the application. The higher the value, the more impact the scaler has on the visuals. |
