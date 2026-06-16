<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.MeshUpdateFlags.DontResetBoneBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that Unity should not reset skinned mesh bone bounds when you modify Mesh data using Mesh.SetVertexBufferData or Mesh.SetIndexBufferData.

When you modify Skinned Mesh vertex position or index buffer data, Unity's default behaviour is to reset the internal data structure that contains the cached bounding boxes of each bone, and then recalculate these bounds from the new vertex and index buffer data.

You can make Unity skip this behaviour by using the `MeshUpdateFlags.DontResetBoneBounds` flag. This can be beneficial to performance when you know that many mesh modifications will happen before the bone bounds need an update, or when you know that bone bounds do not need to be recalculated.

You can use this flag with the Mesh.SetVertexBufferData and Mesh.SetIndexBufferData methods.
