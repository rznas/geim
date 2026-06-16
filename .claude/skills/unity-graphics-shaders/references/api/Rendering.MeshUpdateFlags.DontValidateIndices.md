<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.MeshUpdateFlags.DontValidateIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that Unity should not check index values when you use Mesh.SetIndexBufferData to modify a Mesh's data.

When you use Mesh.SetIndexBufferData to modify a Mesh's data, Unity's default behaviour is to validate the indices array that you supplied, to check for out-of-bounds index values. Unity throws an exception if it finds any.

 You can make Unity skip these checks by using the `MeshUpdateFlags.DontValidateIndices` flag. This can be beneficial to performance, however if you use this flag you must make sure that you pass valid data to the Mesh.

Additional resources: Mesh.SetIndexBufferData.
