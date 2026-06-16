<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain.GetClosestReflectionProbes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| result | [in / out] A list to hold the returned reflection probes and their weights. See ReflectionProbeBlendInfo. |

### Description

Fills the list with reflection probes whose AABB intersects with terrain's AABB. Their weights are also provided. Weight shows how much influence the probe has on the terrain, and is used when the blending between multiple reflection probes occurs.

This function won't touch `result` if Terrain.reflectionProbeUsage is ReflectionProbeUsage.Off, otherwise the original content of the list will be cleared.
