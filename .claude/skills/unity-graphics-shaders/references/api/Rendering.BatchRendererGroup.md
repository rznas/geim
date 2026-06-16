<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchRendererGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A `BatchRendererGroup` is an object that lets you perform customizable high performance rendering.

You can set up batches in advance to set up groups of instances with shared metadata values that describe how to load Material properties. Whenever Unity renders a `BatchRendererGroup`, it invokes the `OnPerformCulling` callback to perform visibility culling and to generate a variable sized list of draw commands that describe how to render the visible parts of the `BatchRendererGroup`. Each draw command instructs Unity to render a group of instances from a given batch with a specific Mesh and Material.

### Static Properties

| Property | Description |
| --- | --- |
| BufferTarget | The buffer target BatchRendererGroup.AddBatch accepts for the active graphics API. |

### Constructors

| Constructor | Description |
| --- | --- |
| BatchRendererGroup | Constructor for a BatchRendererGroup object. |

### Public Methods

| Method | Description |
| --- | --- |
| AddBatch | Create a draw command batch that shares a single set of metadata values and a single GraphicsBuffer. |
| Dispose | Deletes a group. |
| GetRegisteredMaterial | Returns the previously registered Material associated with this MaterialID. |
| GetRegisteredMesh | Returns the previously registered Mesh associated with this MeshID. |
| GetThreadedBatchContext | Get the thread-safe API for interacting with a BatchRendererGroup from Burst jobs. |
| RegisterMaterial | Registers a Material in BatchRendererGroup and returns its BatchMaterialID. Each registration of a specific Material increases its number of owners by 1. |
| RegisterMesh | Registers a mesh in BatchRendererGroup and returns its BatchMeshID. Each registration of a specific mesh increases its number of owners by 1. |
| RemoveBatch | Delete a batch that was previously created with AddBatch. |
| SetBatchBuffer | Change the GraphicsBuffer associated with the given batch. |
| SetEnabledViewTypes | Set the combination of BatchCullingViewType for which this BatchRendererGroup should receive an OnPerformCulling callback. |
| SetErrorMaterial | Set the error material for the BatchRendererGroup. This material will be used internally by Unity to render the draw commands referring to erroneous shaders. You can also pass 'null' to this method to unset the material. |
| SetGlobalBounds | Set the bounds of the BatchRendererGroup. The bounds should encapsulate the render bounds of every object rendered with this BatchRendererGroup. Unity uses these bounds internally for culling. |
| SetLoadingMaterial | Set the loading material for the BatchRendererGroup. |
| SetPickingMaterial | Set the material that Unity uses to render object picking data using the draw commands in the Scene view. |
| UnregisterMaterial | Unregister the Material ID associated with BatchRendererGroup. Each deregistration of a specific Material reduces its number of owners by 1. |
| UnregisterMesh | Unregister the mesh ID associated with BatchRendererGroup. Each deregistration of a specific mesh reduces its number of owners by 1. |

### Static Methods

| Method | Description |
| --- | --- |
| GetConstantBufferMaxWindowSize | Defines the maxiumum amount (in bytes) the BatchRendererGroup constant buffer window size is visible from the shader. |
| GetConstantBufferOffsetAlignment |  |

### Delegates

| Delegate | Description |
| --- | --- |
| OnFinishedCulling | Finished culling callback function. |
| OnPerformCulling | Culling callback function. |
