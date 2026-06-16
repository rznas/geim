<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchFilterSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents settings that Unity applies to draw commands in this draw range.

For more information, see BatchRendererGroup.

### Properties

| Property | Description |
| --- | --- |
| allDepthSorted | Indicates whether all draw commands in the current draw range have the BatchDrawCommandFlags.HasSortingPosition flag set. |
| batchLayer | The batch layer to use for draw commands in this draw range. |
| layer | The layer to use for draw commands in this draw range. |
| motionMode | Specifies how to generate motion vectors in this draw range. |
| receiveShadows | Indicates whether instances from draw commands in this draw range should receive shadows. |
| rendererPriority | The sorting priority to use for draw commands in this draw range. |
| renderingLayerMask | The rendering layer mask to use for draw commands in this draw range. |
| sceneCullingMask | Use this bit mask to discard the draw commands in a particular context. A draw command is not discarded if the expression (1 << layer) & sceneCullingMask is true. This field is typically used when rendering Editor previews. |
| shadowCastingMode | Specifies how instances from the draw commands in this draw range cast shadows. |
| staticShadowCaster | Indicates whether instances from the draw commands in this draw range render into cached shadow maps. |
