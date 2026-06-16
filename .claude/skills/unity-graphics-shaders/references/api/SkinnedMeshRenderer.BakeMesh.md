<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SkinnedMeshRenderer.BakeMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | A static mesh that will receive the snapshot of the skinned mesh. |
| useScale | Whether to compensate for the SkinnedMeshRenderer's Transform scale. If true, the baked Mesh is the same size as the original. If false, the baked Mesh matches the scaling of the SkinnedMeshRenderer's Transform component. The default value is false. |

### Description

Creates a snapshot of SkinnedMeshRenderer and stores it in `mesh`.

The vertices are relative to the SkinnedMeshRenderer Transform component.
 This function always compensates for the position and rotation values of the Transform component with the origin of the baked mesh always the same as the origin of the original mesh.

**Notes**:
 The snapshot is still computed even when updateWhenOffscreen is set to false and the skinned mesh object is currently offscreen.
 When this function is called the skinning process will always take place on the CPU, regardless of the GPU Skinning setting.
