<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores light probe data for all currently loaded Scenes.

The data includes: probe positions, Spherical Harmonics (SH) coefficients and the tetrahedral tessellation.

You can modify the probe positions and coefficients, and update the tetrahedral tessellation at runtime. You can also swap the entire `LightProbes` object for a different pre-baked one using LightmapSettings.lightProbes.

To retrieve the `LightProbes` objects for a specific scene, use LightProbes.GetInstantiatedLightProbesForScene or LightProbes.GetSharedLightProbesForScene.

Additional resources: Light Probes in the Unity Manual, LightmapSettings, ReceiveGI.

### Properties

| Property | Description |
| --- | --- |
| bakedProbes | Coefficients of baked light probes. |
| cellCount | The number of cells space is divided into (Read Only). |
| cellCountSelf | The number of cells space is divided into for this LightProbes object (Read Only). |
| count | The number of light probes (Read Only). |
| countSelf | The number of light probes stored in this LightProbes object (Read Only). |
| positions | Positions of the baked light probes (Read Only). |

### Public Methods

| Method | Description |
| --- | --- |
| GetPositionsSelf | Gets the positions of the baked light probes stored in this LightProbes object. |
| SetPositionsSelf | Sets the positions of the baked light probes stored in this LightProbes object. |

### Static Methods

| Method | Description |
| --- | --- |
| CalculateInterpolatedLightAndOcclusionProbes | Calculate light probes and occlusion probes at the given world space positions. |
| GetInstantiatedLightProbesForScene | Gets an instantiated clone of the LightProbes object for a specific scene. |
| GetInterpolatedProbe | Returns an interpolated probe for the given position for both real-time and baked light probes combined. |
| GetSharedLightProbesForScene | Gets the shared LightProbes object for a specific scene. |
| Tetrahedralize | Synchronously tetrahedralize the currently loaded LightProbe positions. |
| TetrahedralizeAsync | Asynchronously tetrahedralize all currently loaded LightProbe positions. |

### Events

| Event | Description |
| --- | --- |
| lightProbesUpdated | Unity raises this event to indicate that the light probe structure (tetrahedralization) or values (spherical harmonics coefficients) have changed. |
| needsRetetrahedralization | An event which is called when the number of currently loaded light probes changes due to additive scene loading or unloading. |
| tetrahedralizationCompleted | Event which is called after LightProbes.Tetrahedralize or LightProbes.TetrahedralizeAsync has finished computing a tetrahedralization. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
