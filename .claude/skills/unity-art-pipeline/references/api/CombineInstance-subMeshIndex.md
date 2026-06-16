<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CombineInstance-subMeshIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The index of the sub-mesh to be combined with the other meshes.

The Mesh.CombineMeshes method uses this property along with the mesh property to identify the mesh data copy into the combined mesh. If a mesh contains multiple sub-meshes, you must create a separate `CombineInstance` for each sub-mesh.

The default value of this property is 0.

Accepted values range from greater than or equal to 0 and less than the sub-mesh count for the corresponding mesh.
