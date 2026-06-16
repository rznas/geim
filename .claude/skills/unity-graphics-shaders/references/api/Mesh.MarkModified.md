<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MarkModified.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Notify Renderer components of mesh geometry change.

By default, whenever Mesh data changes that could affect the geometry of the mesh, all Renderer components that use this mesh get notified. For example, MeshRenderer components recalculate their bounding boxes, and ShapeModule rebuild internal data used for mesh surface emission.

However a MeshUpdateFlags.DontNotifyMeshUsers flag can be used in Mesh.SetVertexBufferData, Mesh.SetIndexBufferData or Mesh.SetSubMesh in order to skip this notification. This can be beneficial when you know that many mesh modifications will happen before the renderer components will need to actually update. A manual call to `MarkModified` can be used later to notify the dependent renderer components of a mesh geometry change.

`MarkModified` function only needs to be called if you actually use the `DontNotifyMeshUsers` flag. In all other cases the mesh change notifications happen automatically.

Additional resources: Mesh.SetVertexBufferData, Mesh.SetIndexBufferData, Mesh.SetSubMesh.
