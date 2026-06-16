<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.PerformanceMetrics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

PerformanceMetrics store the current bottleneck, CPU, and GPU levels

### Properties

| Property | Description |
| --- | --- |
| ClusterInfo | Current CPU cluster information information. Updated at application startup. |
| CpuPerformanceBoost | CPU boosted. |
| CurrentCpuLevel | Current CPU performance level. This value updates once per frame when changes are applied to IDevicePerformanceControl.CpuLevel. Value in the range Constants.MinCpuPerformanceLevel, IDevicePerformanceControl.MaxCpuPerformanceLevel] or Constants.UnknownPerformanceLevel. |
| CurrentGpuLevel | Current GPU performance level. This value updates once per frame when changes are applied to IDevicePerformanceControl.GpuLevel. Value in the range Constants.MinGpuPerformanceLevel, IDevicePerformanceControl.MaxGpuPerformanceLevel] or Constants.UnknownPerformanceLevel. |
| GpuPerformanceBoost | GPU boosted. |
| PerformanceBottleneck | Current performance bottleneck which describes if the program is CPU, GPU, or Application.targetFrameRate bound. |
