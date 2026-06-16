<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbeProxyVolume.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Light Probe Proxy Volume component offers the possibility to use higher resolution lighting for large non-static GameObjects.

By default, a probe-lit Renderer receives lighting from a single Light Probe that is interpolated from the surrounding Light Probes in the Scene. Because of this, GameObjects have constant ambient lighting regardless of their position on the surface. The light has have a rotational gradient because it's using spherical harmonics, but it lacks a spatial gradient. This is more noticeable on larger GameObjects and Particle Systems. The lighting across the GameObject matches the lighting at the anchor point, and if the GameObject straddles a lighting gradient, parts of the GameObject will look incorrect.

This component will generate a 3D grid of interpolated Light Probes inside a bounding volume. The resolution of the grid can be user-specified. The spherical harmonics coefficients of the interpolated Light Probes are updated into 3D textures, which are sampled at render time to compute the contribution to the diffuse ambient lighting. This adds a spatial gradient to probe-lit GameObjects.

Additional resources: Light Probes.

### Static Properties

| Property | Description |
| --- | --- |
| isFeatureSupported | Checks if Light Probe Proxy Volumes are supported. |

### Properties

| Property | Description |
| --- | --- |
| boundingBoxMode | The bounding box mode for generating the 3D grid of interpolated Light Probes. |
| boundsGlobal | The world-space bounding box in which the 3D grid of interpolated Light Probes is generated. |
| dataFormat | The texture data format used by the Light Probe Proxy Volume 3D texture. |
| gridResolutionX | The 3D grid resolution on the x-axis. |
| gridResolutionY | The 3D grid resolution on the y-axis. |
| gridResolutionZ | The 3D grid resolution on the z-axis. |
| originCustom | The local-space origin of the bounding box in which the 3D grid of interpolated Light Probes is generated. |
| probeDensity | Interpolated Light Probe density. |
| probePositionMode | The mode in which the interpolated Light Probe positions are generated. |
| qualityMode | Determines how many Spherical Harmonics bands will be evaluated to compute the ambient color. |
| refreshMode | Sets the way the Light Probe Proxy Volume refreshes. |
| resolutionMode | The resolution mode for generating the grid of interpolated Light Probes. |
| sizeCustom | The size of the bounding box in which the 3D grid of interpolated Light Probes is generated. |

### Public Methods

| Method | Description |
| --- | --- |
| Update | Triggers an update of the Light Probe Proxy Volume. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| enabled | Enabled Behaviours are Updated, disabled Behaviours are not. |
| isActiveAndEnabled | Checks whether a component is enabled, attached to a GameObject that is active in the hierarchy, and the component's OnEnable has been called. |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| BroadcastMessage | Calls the method named methodName on every MonoBehaviour in this game object or any of its children. |
| CompareTag | Checks the GameObject's tag against the defined tag. |
| GetComponent | Gets a reference to a component of type T on the same GameObject as the component specified. |
| GetComponentInChildren | Gets a reference to a component of type T on the same GameObject as the component specified, or any child of the GameObject. |
| GetComponentIndex | Gets the index of the component on its parent GameObject. |
| GetComponentInParent | Gets a reference to a component of type T on the same GameObject as the component specified, or any parent of the GameObject. |
| GetComponents | Gets references to all components of type T on the same GameObject as the component specified. |
| GetComponentsInChildren | Gets references to all components of type T on the same GameObject as the component specified, and any child of the GameObject. |
| GetComponentsInParent | Gets references to all components of type T on the same GameObject as the component specified, and any parent of the GameObject. |
| SendMessage | Calls the method named methodName on every MonoBehaviour in this game object. |
| SendMessageUpwards | Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour. |
| TryGetComponent | Gets the component of the specified type, if it exists. |
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
