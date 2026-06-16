<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpriteRenderer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A component that renders a Sprite.

If a GameObject has a SpriteRenderer component, the component renders the assigned Sprite asset on the screen using the position, rotation and scale from the Transform component.

You can use this to draw characters, items, backgrounds, and other visual elements in a 2D game.

Additional resources: Sprite, Transform, SpriteShapeRenderer, SpriteMask, SpriteAtlas.

```csharp
using UnityEngine;// This example script demonstrates how to change the sprite and the sprite color, and flip the sprite horizontally and vertically.
// Attach this script to a GameObject with a SpriteRenderer component and assign a Sprite to the Sprite field in the Inspector.
public class Example : MonoBehaviour
{
    public Sprite sprite;    private SpriteRenderer m_spriteRenderer;    private void Awake()
    {
        // Fetch the SpriteRenderer from the GameObject
        m_spriteRenderer = GetComponent<SpriteRenderer>();
    }    private void Start()
    {
        // Change the sprite to the one in the sprite field
        m_spriteRenderer.sprite = sprite;
        
        // Change the color of the sprite to red
        m_spriteRenderer.color = Color.red;
        
        // Flip the sprite horizontally
        m_spriteRenderer.flipX = true;
        
        // Flip the sprite vertically
        m_spriteRenderer.flipY = true;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| adaptiveModeThreshold | The current threshold for Sprite Renderer tiling. |
| color | Rendering color for the Sprite graphic. |
| drawMode | The current draw mode of the Sprite Renderer. |
| flipX | Flips the sprite on the X axis. |
| flipY | Flips the sprite on the Y axis. |
| maskInteraction | Specifies how the sprite interacts with the masks. |
| size | Property to set or get the size to render when the SpriteRenderer.drawMode is set to SpriteDrawMode.Sliced or SpriteDrawMode.Tiled. |
| sprite | The Sprite to render. |
| spriteSortPoint | Determines the position of the Sprite used for sorting the SpriteRenderer. |
| tileMode | The current tile mode of the Sprite Renderer. |

### Public Methods

| Method | Description |
| --- | --- |
| RegisterSpriteChangeCallback | Registers a callback to receive a notification when the SpriteRenderer's Sprite reference changes. |
| UnregisterSpriteChangeCallback | Removes a callback (that receives a notification when the Sprite reference changes) that was previously registered to a SpriteRenderer. |

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
