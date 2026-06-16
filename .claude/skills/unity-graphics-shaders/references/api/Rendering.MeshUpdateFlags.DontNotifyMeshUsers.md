<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.MeshUpdateFlags.DontNotifyMeshUsers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that Unity should not notify Renderer components about a possible Mesh bounds change, when you modify Mesh data.

When you modify Mesh data that could affect the geometry of the mesh, Unity's default behaviour is to notify all Renderer components that use this mesh, so that they can perform recalculations based on the new data that are typically desirable. For example, MeshRenderer components recalculate their bounding boxes, and the ShapeModule rebuilds internal data used for mesh surface emission.

If you supply the `MeshUpdateFlags.DontNotifyMeshUsers` flag when using the "advanced" Mesh API, Unity will omit these notifications. This can be beneficial to performance when you know that many mesh modifications will happen before the renderer components actually need to update.

You must therefore make sure that you call Mesh.MarkModified at a later point to notify the dependent renderer components that they should perform their recalculations.

You can use this flag with the following "advanced" mesh API: Mesh.SetVertexBufferData, Mesh.SetIndexBufferData or Mesh.SetSubMesh

 For information about the difference between the simpler and more advanced methods of assigning data to a Mesh from script, see the notes on the Mesh page.
