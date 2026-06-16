<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullingResults.SetReflectionProbeIndexMap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lightIndexMap | Array with reflection probe indices that map from VisibleReflectionProbe to internal per-object reflection probe lists. |

### Description

If a RenderPipeline sorts or otherwise modifies the VisibleReflectionProbe list, an index remap will be necessary to properly make use of per-object reflection probe lists.

If an element of the array is set to -1, the reflection probe corresponding to that element will be disabled. Additional resources:: CullingResults.GetReflectionProbeIndexMap, CullingResults.
