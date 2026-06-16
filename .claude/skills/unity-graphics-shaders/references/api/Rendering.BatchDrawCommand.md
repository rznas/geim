<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchDrawCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rendering.BatchDrawCommand struct defines instructions for drawing multiple objects in a single instanced draw call. It specifies parameters like meshes, materials, transforms, and shader properties for rendering.

The Rendering.BatchDrawCommand struct helps render large numbers of similar objects by reducing the overhead of individual draw calls.

Use it for custom rendering workflows, especially with BatchRendererGroup, where manual control over GPU draw calls is required. It's common in advanced rendering scenarios, like custom culling or procedural object batches.

Set up a BatchDrawCommand with required properties (mesh, material, transforms) and pass it to BatchRendererGroup.

Additional resources: BatchRendererGroup.

### Properties

| Property | Description |
| --- | --- |
| activeMeshLod | Currently active Mesh LOD. |
| batchID | The batch ID that this draw command uses. Determines the metadata values that are available to a shader. |
| flags | Specifies rendering options for the draw command. |
| lightmapIndex | The index of the baked lightmap used in this draw command. If BatchDrawCommandFlags.UseLegacyLightmapsKeyword is not set, this value is ignored. |
| materialID | Identifies which Material to use to render the instances in this draw command. |
| meshID | Identifies which Mesh to use to render the instances in this draw command. |
| sortingPosition | Together with BatchDrawCommand.flags, this specifies how to depth sort the instances in this draw command. |
| splitVisibilityMask | Indicates which splits that the draw command is visible in. |
| submeshIndex | Specifies which sub-mesh of the Mesh identified by BatchDrawCommand.meshID to use to render the instances in this draw command. |
| visibleCount | The number of instances to draw with this draw command. This must be a value greater than 1. |
| visibleOffset | The index of the element in BatchCullingOutputDrawCommands.visibleInstances that matches the first instance in this draw command. |
