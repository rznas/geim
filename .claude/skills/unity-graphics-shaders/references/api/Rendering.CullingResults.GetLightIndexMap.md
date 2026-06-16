<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullingResults.GetLightIndexMap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The allocator to use. |

### Returns

**NativeArray<int>** Array of indices that map from VisibleLight indices to internal per-object light list indices.

### Description

If a RenderPipeline sorts or otherwise modifies the VisibleLight list, an index remap will be necessary to properly make use of per-object light lists.

Additional resources:: CullingResults.SetLightIndexMap, CullingResults.
