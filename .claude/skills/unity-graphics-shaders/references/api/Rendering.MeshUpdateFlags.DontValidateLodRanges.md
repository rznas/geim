<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.MeshUpdateFlags.DontValidateLodRanges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this value to disable the validation of Mesh LOD ranges when modifying mesh data.

When you use Mesh.MeshData.SetLodData, Mesh.SetSubMesh, or Mesh.ApplyAndDisposeWritableMeshData to modify mesh data, Unity's default behavior is to validate the LOD ranges you provided. The validation checks for out-of-bounds index ranges, and Unity throws an exception if it finds any.

 You can make Unity skip the validation by using this flag, which might improve performance. If you use this flag, make sure that you pass valid data to the mesh importer.

Additional resources: Mesh.MeshData.SetLodData, Mesh.SetSubMesh, Mesh.ApplyAndDisposeWritableMeshData.
