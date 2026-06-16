<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StaticBatchingUtility.Combine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| staticBatchRoot | The GameObject that should become the root of the combined batch. |

### Description

Combines all children GameObjects of the `staticBatchRoot` for static batching.

Static batching is a draw call batching method that combines meshes that don't move to reduce draw calls. For more information about static batching, see Static batching.

This method copies the mesh data of the GameObjects into a single internal mesh. Each original GameObject is still present in the Scene which means Unity can still cull them individually.

All child GameObjects under the `staticBatchRoot` must be eligible for static batching. For information on the eligibility requirements for static batching, see Static batching at runtime.

After you combine the GameObjects, you can't change the Transform properties of the children. However, you can change the Transform properties of the `staticBatchRoot`. Doing so transforms the entire combined batch.

Note: You don't need to use this method with GameObjects you marked as Batching Static in the Editor. Unity prepares these GameObjects for static batching when it builds the Player.

 See also: Mesh.CombineMeshes, Mesh.isReadable.

### Parameters

| Parameter | Description |
| --- | --- |
| gos | The GameObjects to prepare for static batching. |
| staticBatchRoot | The GameObject that should become the root of the combined batch. |

### Description

Combines all GameObjects in `gos` for static batching and treats `staticBatchRoot` as the root.

Static batching is a draw call batching method that combines meshes that don't move to reduce draw calls. For more information about static batching, see Static batching.

This method copies the mesh data of the GameObjects into a single internal mesh. Each original GameObject is still present in the Scene which means Unity can still cull them individually.

All GameObjects in `gos` must be eligible for static batching. For information on what a GameObject needs to be eligible for static batching, see Static batching at runtime.

After you combine the GameObjects, you can't change the Transform properties of the children. However, you can change the Transform properties of the `staticBatchRoot`. Doing so transforms the entire combined batch.

Note: You don't need to use this API on GameObjects you marked as Batching Static in the Editor. Unity prepares these GameObjects for static batching when it builds the Player.



See also: Mesh.CombineMeshes, Mesh.isReadable.
