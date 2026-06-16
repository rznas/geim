<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRMeshSubsystem.TryGetSubmeshClassifications.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | A MeshId obtained earlier through TryGetMeshInfos for which to retrieve classification information |
| allocator | The Allocator type to use for the returned NativeArrays |
| elementsPerVector | The number of packed elements in vertexIndexVectors to treat as one classification unit. Platform-specific; for example, some platforms may use `1` for a single vertex per classification; others may use `3` to represent a triangle face per classification. |
| vertexIndexVectors | The indices referring to Mesh vertices that the classifications apply to, coallated with classifications. |
| classifications | The opaque classification enumerations returned by the provider for the defined vertex components above. |

### Returns

**void** True if the retrieval is successful, otherwise False

### Description

Gets classification information for vertices or vertex sets for meshes obtained through XRMeshSubsystem.TryGetMeshInfos. This must be enabled through XRMeshSubsystem._submeshClassificationEnabled.

Use this to retrieve semantic classifications for vertex or vertex group components of the meshes tracked by the subsystem.

 This method always returns new NativeArrays, even when there are no results. The caller is responsible for disposing the returned NativeArray, though specifying the appropriate Allocator will manage this for you.

 Additional resources: XRMeshSubsystem._submeshClassificationEnabled, XRMeshSubsystem.TryGetMeshInfos
