<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullingResults.SetLightIndexMap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lightIndexMap | Array with light indices that map from VisibleLight to internal per-object light lists. |

### Description

If a RenderPipeline sorts or otherwise modifies the VisibleLight list, an index remap will be necessary to properly make use of per-object light lists.

If an element of the array is set to -1, the light corresponding to that element will be disabled. Additional resources:: CullingResults.GetLightIndexMap, CullingResults.
