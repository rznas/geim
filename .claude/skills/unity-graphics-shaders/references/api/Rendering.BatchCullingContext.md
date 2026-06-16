<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Culling context for a batch.

Specifies the data required to perform culling. Additional resources: OnPerformCulling.

### Properties

| Property | Description |
| --- | --- |
| cullingFlags | Additional culling information for the current context. |
| cullingLayerMask | The cullingLayerMask value of the object from which the culling is invoked. The draw command is discarded by the internal culling if the expression (1 << layer) & cullingLayerMask is false. Using this field is optional, use it for performance or other optimization purposes. |
| cullingPlanes | Planes to cull against. |
| cullingSplits | The array of CullingSplit structs. |
| localToWorldMatrix | Local to world matrix. |
| lodParameters | Additional resources: LODParameters. |
| projectionType | The projection of the view from which the culling is invoked. Usage example: take different culling paths for orthographic vs perspective views. |
| receiverPlaneCount | The number of receiver planes. |
| receiverPlaneOffset | The index of the first receiver plane in the BatchCullingContext.cullingPlanes array. |
| sceneCullingMask | Use this bit mask to discard the draw commands in a particular context. A draw command is not discarded if the expression (1 << layer) & sceneCullingMask is true. This field is typically used when rendering Editor previews. |
| splitExclusionMask | A bitmask that represents the BatchCullingContext.cullingSplits Unity ignores in a BatchDrawCommand struct. |
| viewID | The ID of the object from which the culling is invoked. Usage example: store culling-related data for each object. |
| viewType | The type of the view from which the culling is invoked. Usage examples: skip culling, take different culling paths depending on the view type, etc. |
