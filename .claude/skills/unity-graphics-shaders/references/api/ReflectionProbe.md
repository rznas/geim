<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ReflectionProbe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The reflection probe is used to capture the surroundings into a texture which is passed to the shaders and used for reflections.

The properties are an exact match for the values shown in the Inspector.

This class is a script interface for a reflection probe component.

 Reflection probes are usually just created in the Editor, but sometimes you might want to create a reflection probe from a script:

```csharp
using UnityEngine;
using UnityEditor;public class ProbeCreator
{
    [MenuItem("ReflectionProbe/CreateRealtimeProbe")]
    public static void RealtimeProbe()
    {
        // Add a GameObject with a ReflectionProbe component
        GameObject probeGameObject = new GameObject("Realtime Reflection Probe");
        ReflectionProbe probeComponent = probeGameObject.AddComponent<ReflectionProbe>();
        
        // The probe will contribute to reflections inside a box of size 10x10x10 centered on the position of the probe
        probeComponent.size = new Vector3(10, 10, 10);        // Set the type to realtime and refresh the probe every frame
        probeComponent.mode = UnityEngine.Rendering.ReflectionProbeMode.Realtime;
        probeComponent.refreshMode = UnityEngine.Rendering.ReflectionProbeRefreshMode.EveryFrame;
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| defaultTexture | The surface texture of the default reflection probe that captures the environment contribution. Read only. |
| defaultTextureHDRDecodeValues | HDR decode values of the default reflection probe texture. |

### Properties

| Property | Description |
| --- | --- |
| backgroundColor | The color with which the texture of reflection probe will be cleared. |
| bakedTexture | Reference to the baked texture of the reflection probe's surrounding. |
| blendDistance | Distance around probe used for blending (used in deferred probes). |
| bounds | The probe's world space axis-aligned bounding box in which the probe can contribute to reflections (Read Only). |
| boxProjection | Should this reflection probe use box projection? |
| center | The center of the probe's bounding box in which the probe can contribute to reflections. The center is relative to the position of the probe. |
| clearFlags | How the reflection probe clears the background. |
| cullingMask | This is used to render parts of the reflecion probe's surrounding selectively. |
| customBakedTexture | Reference to the baked texture of the reflection probe's surrounding. Use this to assign custom reflection texture. |
| farClipPlane | The far clipping plane distance when rendering the probe. |
| hdr | Should this reflection probe use HDR rendering? |
| importance | Reflection probe importance. |
| intensity | The intensity modifier that is applied to the texture of reflection probe in the shader. |
| mode | Should reflection probe texture be generated in the Editor (ReflectionProbeMode.Baked) or should probe use custom specified texure (ReflectionProbeMode.Custom)? |
| nearClipPlane | The near clipping plane distance when rendering the probe. |
| realtimeTexture | Reference to the real-time texture of the reflection probe's surroundings. Use this to assign a RenderTexture to use for real-time reflection. |
| refreshMode | Sets the way the probe will refresh.Additional resources: ReflectionProbeRefreshMode. |
| renderDynamicObjects | Specifies whether Unity should render non-static GameObjects into the Reflection Probe. If you set this to true, Unity renders non-static GameObjects into the Reflection Probe. If you set this to false, Unity does not render non-static GameObjects into the Reflection Probe. Unity only takes this property into account if the Reflection Probe's Type is Custom. |
| resolution | Resolution of the underlying reflection texture in pixels. |
| shadowDistance | Shadow drawing distance when rendering the probe. |
| size | The size of the probe's bounding box in which the probe can contribute to reflections. The size is in world space. |
| texture | Texture which is passed to the shader of the objects in the vicinity of the reflection probe (Read Only). |
| textureHDRDecodeValues | HDR decode values of the reflection probe texture. |
| timeSlicingMode | Sets this probe time-slicing modeAdditional resources: ReflectionProbeTimeSlicingMode. |

### Public Methods

| Method | Description |
| --- | --- |
| IsFinishedRendering | Checks if a probe has finished a time-sliced render. |
| RenderProbe | Refreshes the probe's cubemap. |
| Reset | Revert all ReflectionProbe parameters to default. |

### Static Methods

| Method | Description |
| --- | --- |
| BlendCubemap | Utility method to blend 2 cubemaps into a target render texture. |
| UpdateCachedState | Updates the culling system with the ReflectionProbe's current state. This ensures that Unity correctly culls the ReflectionProbe during rendering if you implement your own runtime reflection system. |

### Events

| Event | Description |
| --- | --- |
| defaultReflectionSet | Adds a delegate to get notifications when the default specular Cubemap is changed. |
| defaultReflectionTexture | Adds a delegate to get notifications when the default specular Cubemap is changed. |
| reflectionProbeChanged | Adds a delegate to get notifications when a Reflection Probe is added to a Scene or removed from a Scene. |

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
