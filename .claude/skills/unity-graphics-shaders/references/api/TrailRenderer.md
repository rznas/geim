<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a visual trail of polygons that follows a GameObject's movement, useful for emphasizing motion or creating dynamic visual effects.

Use the Trail Renderer to tie an effect to a moving GameObject’s position. Trail Renderers help create visual effects such as missile trails, weapon swing arcs, or highlighting the path of fast-moving objects. They provide a dynamic way to visually emphasize motion, making them useful for effects in action-oriented games or scenes with rapid object movement.

The component works by storing the GameObject’s position at intervals defined by the TrailRenderer.minVertexDistance property and connecting these points to form a continuous ribbon-like trail. You can control the duration of the trail using the TrailRenderer.time property, and you can configure its appearance, including width and color gradients, using a Material.

To control the trail effect, use the TrailRenderer.Clear method. This method instantly removes any existing trail segments and prevents the Trail Renderer from adding new points.

Additional resources: Transform, Material, LineRenderer, TrailRenderer.Clear.

The following code sample demonstrates how to attach a Trail Renderer to a moving GameObject and configure some of its basic properties. Attach this script to an empty GameObject in your scene.

```csharp
// Ensure the GameObject has a TrailRenderer component
using UnityEngine;[RequireComponent(typeof(TrailRenderer))]
public class SimpleTrail : MonoBehaviour
{
    public float moveSpeed = 3.0f;
    public float circleRadius = 2.0f;    private TrailRenderer trail;
    private float angle = 0f;    void Start()
    {
        trail = GetComponent<TrailRenderer>();        // Configure the trail's appearance
        trail.time = 1.5f;              // How long the trail lasts in seconds
        trail.startWidth = 0.3f;        // Width at the newest part of the trail
        trail.endWidth = 0f;            // Width at the oldest part of the trail        // Set a color gradient (e.g., white fading to transparent red)
        Gradient gradient = new Gradient();
        gradient.SetKeys(
           // Color keys: White at the start, Red at the end
           new GradientColorKey[] { new GradientColorKey(Color.white, 0.0f), new GradientColorKey(Color.red, 1.0f) },
           // Alpha keys: Opaque at the start, Transparent at the end
           new GradientAlphaKey[] { new GradientAlphaKey(1.0f, 0.0f), new GradientAlphaKey(0.0f, 1.0f) }
        );
        trail.colorGradient = gradient;
        
        GameObject head = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        Transform headTransform = head.GetComponent<Transform>();
        headTransform.SetParent(transform);
        headTransform.localPosition = Vector3.zero;
        headTransform.localScale = Vector3.one * 0.2f; 
    }    void Update()
    {
        // Move the GameObject in a circle
        angle += moveSpeed * Time.deltaTime;
        float x = Mathf.Cos(angle) * circleRadius;
        float z = Mathf.Sin(angle) * circleRadius;
        transform.position = new Vector3(x, 0, z);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| alignment | Select whether the trail will face the camera, or the orientation of the Transform Component. |
| applyActiveColorSpace | Set whether colors will be converted appropriately before being passed to the GPU when using Linear Rendering. |
| autodestruct | Does the GameObject of this Trail Renderer auto destruct? |
| colorGradient | Set the color gradient describing the color of the trail at various points along its length. |
| emitting | Creates trails when the GameObject moves. |
| endColor | Set the color at the end of the trail. |
| endWidth | The width of the trail at the end of the trail. |
| generateLightingData | Configures a trail to generate Normals and Tangents. With this data, Scene lighting can affect the trail via Normal Maps and the Unity Standard Shader, or your own custom-built Shaders. |
| maskInteraction | Specifies how the TrailRenderer interacts with SpriteMask. |
| minVertexDistance | Set the minimum distance the trail can travel before a new vertex is added to it. |
| numCapVertices | Set this to a value greater than 0, to get rounded corners on each end of the trail. |
| numCornerVertices | Set this to a value greater than 0, to get rounded corners between each segment of the trail. |
| positionCount | Get the number of line segments in the trail. |
| shadowBias | Apply a shadow bias to prevent self-shadowing artifacts. The specified value is the proportion of the trail width at each segment. |
| startColor | Set the color at the start of the trail. |
| startWidth | The width of the trail at the spawning point. |
| textureMode | Choose whether the U coordinate of the trail texture is tiled or stretched. |
| textureScale | A multiplier for the UV coordinates of the trail texture. |
| time | How long does the trail take to fade out. |
| widthCurve | Set the curve describing the width of the trail at various points along its length. |
| widthMultiplier | Set an overall multiplier that is applied to the TrailRenderer.widthCurve to get the final width of the trail. |

### Public Methods

| Method | Description |
| --- | --- |
| AddPosition | Adds a position to the trail. |
| AddPositions | Add an array of positions to the trail. |
| BakeMesh | Creates a snapshot of TrailRenderer and stores it in mesh. |
| Clear | Removes all points from the TrailRenderer. Useful for restarting a trail from a new position. |
| GetPosition | Get the position of a vertex in the trail. |
| GetPositions | Get the positions of all vertices in the trail. |
| GetVisiblePositions | Get the visible positions of all vertices in the trail. |
| SetPosition | Set the position of a vertex in the trail. |
| SetPositions | Sets the positions of all vertices in the trail. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |
| allowOcclusionWhenDynamic | Controls if dynamic occlusion culling should be performed for this renderer. |
| bounds | The bounding box of the renderer in world space. |
| enabled | Makes the rendered 3D object visible if enabled. |
| forceMeshLod | Force a specific Mesh LOD level for this renderer if the mesh has Mesh LODs. If the value is -1, Unity uses the default Mesh LOD selection method. |
| forceRenderingOff | Allows turning off rendering for a specific component. |
| isLOD0 | Is the renderer the first LOD level in its group. |
| isPartOfStaticBatch | Indicates whether the renderer is part of a static batch with other renderers. |
| isVisible | Is this renderer visible in any camera? (Read Only) |
| lightmapIndex | The index of the baked lightmap applied to this renderer. |
| lightmapScaleOffset | The UV scale & offset used for a lightmap. |
| lightProbeProxyVolumeOverride | If set, the Renderer will use the Light Probe Proxy Volume component attached to the source GameObject. |
| lightProbeUsage | The light probe interpolation type. |
| localBounds | The bounding box of the renderer in local space. |
| localToWorldMatrix | Matrix that transforms a point from local space into world space (Read Only). |
| LODGroup | The LODGroup for this Renderer. |
| material | Returns the first instantiated Material assigned to the renderer. |
| materials | Returns all the instantiated materials of this object. |
| meshLodSelectionBias | Bias to add to the calculated value when selecting a Mesh LOD level. |
| motionVectorGenerationMode | Specifies the mode for motion vector rendering. |
| probeAnchor | If set, Renderer will use this Transform's position to find the light or reflection probe. |
| rayTracingAccelerationStructureBuildFlags | The flags Unity uses when it builds acceleration structures associated with geometry used by renderers. |
| rayTracingAccelerationStructureBuildFlagsOverride | Whether to override the default build flags specified when creating a RayTracingAccelerationStructure. |
| rayTracingMode | Describes how this renderer is updated for ray tracing. |
| realtimeLightmapIndex | The index of the real-time lightmap applied to this renderer. |
| realtimeLightmapScaleOffset | The UV scale & offset used for a real-time lightmap. |
| receiveShadows | Does this object receive shadows? |
| reflectionProbeUsage | Should reflection probes be used for this Renderer? |
| rendererPriority | This value sorts renderers by priority. Lower values are rendered first and higher values are rendered last. |
| renderingLayerMask | Determines which rendering layer this renderer lives on, if you use a scriptable render pipeline. |
| shadowCastingMode | Does this object cast shadows? |
| sharedMaterial | The shared material of this object. |
| sharedMaterials | All the shared materials of this object. |
| sortingLayerID | Unique ID of the Renderer's sorting layer. |
| sortingLayerName | Name of the Renderer's sorting layer. |
| sortingOrder | Renderer's order within a sorting layer. |
| staticShadowCaster | Is this renderer a static shadow caster? |
| worldToLocalMatrix | Matrix that transforms a point from world space into local space (Read Only). |

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
| GetClosestReflectionProbes | Returns an array of closest reflection probes with weights, weight shows how much influence the probe has on the renderer, this value is also used when blending between reflection probes occur. |
| GetMaterials | Returns all the instantiated materials of this object. |
| GetPropertyBlock | Get per-Renderer or per-Material property block. |
| GetSharedMaterials | Returns all the shared materials of this object. |
| HasPropertyBlock | Returns true if the Renderer has a material property block attached via SetPropertyBlock. |
| ResetBounds | Reset custom world space bounds. |
| ResetLocalBounds | Reset custom local space bounds. |
| SetMaterials | Assigns the shared materials of this renderer using the list of materials provided. |
| SetPropertyBlock | Lets you set or clear per-renderer or per-material parameter overrides. |
| SetSharedMaterials | Assigns the shared materials of this renderer using the list of materials provided. |

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

### Messages

| Message | Description |
| --- | --- |
| OnBecameInvisible | OnBecameInvisible is called when the object is no longer visible by any camera. |
| OnBecameVisible | OnBecameVisible is called when the object became visible by any camera. |
