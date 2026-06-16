<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-maxComputeWorkGroupSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The largest total number of invocations in a single local work group that can be dispatched to a compute shader (Read Only).

The product of SystemInfo.maxComputeWorkgroupSizeX, SystemInfo.maxComputeWorkgroupSizeY and SystemInfo.maxComputeWorkgroupSizeZ cannot exceed this number on the current device. Note that this is the theoretical maximum. The actual limit depends on the shader complexity, so it can be lower.

 Additional resources:SystemInfo.maxComputeWorkGroupSizeX SystemInfo.maxComputeWorkGroupSizeY SystemInfo.maxComputeWorkGroupSizeZ
