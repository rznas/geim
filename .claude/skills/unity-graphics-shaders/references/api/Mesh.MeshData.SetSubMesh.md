<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.SetSubMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the sub-mesh to set data for. See subMeshCount. If you specify an out of range index, Unity throws an exception. |
| desc | Sub-mesh data. |
| flags | Flags controlling the function behavior. See MeshUpdateFlags. |

### Description

Sets the data for a sub-mesh of the Mesh that Unity creates from the `MeshData`.

See Mesh.SetSubMesh for more information on setting sub-mesh data. If you call this method on a read-only `MeshData`, Unity throws an exception.
