<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRMeshSubsystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows external systems to provide dynamic meshes to Unity.

The XRMeshSubsystem enables external systems to provide dynamic meshes to Unity. The meshes are processed on background threads, including physics baking, so as not to block the main thread during execution. This is useful for that provide dynamic meshes during runtime, such as spatially-aware AR devices.

### Properties

| Property | Description |
| --- | --- |
| meshDensity | Call this function to request a change in the density of the generated Meshes. Unity gives the density level as a value within the range 0.0 to 1.0 and the provider determines how to map that value to their implementation. Setting this value does not guarantee an immediate change in the density of any currently created Mesh and may only change the density for new or updated Meshes. |
| submeshClassificationEnabled | Get this property to determine the currently requested state of submesh classification. Set this property to True to enable submesh classification, if the platform supports it. Set it to False to disable. Note that this property may require a restart of the subsystem in order to take effect. |

### Public Methods

| Method | Description |
| --- | --- |
| GenerateMeshAsync | Requests the generation of the Mesh with MeshId meshId. Unity calls onMeshGenerationComplete when generation finishes. |
| GetUpdatedMeshTransforms | Gets the updated mesh transforms. |
| SetBoundingVolume | Set the bounding volume to restrict the space in which Unity generates and tracks Meshes.The bounding volume is an Axis Aligned Bounding Box (AABB) centered at the origin and extends in each dimension as defined in extents.The units of measurement depend on the provider. |
| TryGetMeshInfos | Gets information about every Mesh the system currently tracks. |
| TryGetSubmeshClassifications | Gets classification information for vertices or vertex sets for meshes obtained through XRMeshSubsystem.TryGetMeshInfos. This must be enabled through XRMeshSubsystem._submeshClassificationEnabled. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| running | Whether or not the subsystem is running. |

### Public Methods

| Method | Description |
| --- | --- |
| Destroy | Destroys this instance of a subsystem. |
| Start | Starts an instance of a subsystem. |
| Stop | Stops an instance of a subsystem. |
