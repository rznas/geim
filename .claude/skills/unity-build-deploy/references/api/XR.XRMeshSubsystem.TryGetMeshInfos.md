<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRMeshSubsystem.TryGetMeshInfos.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| meshInfosOut | A `List` of MeshInfos to be filled. Passing `null` will throw an `ArgumentNullException`. |

### Returns

**bool** `True` if the `List` was populated.

### Description

Gets information about every Mesh the system currently tracks.

Use this to determine which meshes have been added, changed, or removed.

 **Note:** This method provides state changes since the last time the method was called. Typically, a single system should manage this information.

 Additional resources: XRMeshSubsystem.GenerateMeshAsync
