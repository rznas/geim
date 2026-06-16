<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Render Settings contain values for a range of visual elements in your Scene, like fog and ambient light.

The properties of the Render Settings class can be adjusted both in the Unity Editor through the Lighting Window and using scripts at runtime.

The Render Settings values are stored inside a scene, so changing the properties of this class will change the scene asset as well.

When multiple scenes are loaded at a time, Unity uses the Render Settings from the active scene.

 The example below describes a component creating an axis-aligned zone that changes the color of the fog as the camera moves toward the zone. Additional resources: The Lighting window.

```csharp
using UnityEngine;public class FogZone : MonoBehaviour
{
    public Camera mainCamera;
    public Vector3 zoneCenter = Vector3.zero;
    public Vector3 zoneSize = new Vector3(10, 10, 10);
    public Color fogColorInside = Color.red;
    public Color fogColorOutside = Color.white;
    public float transitionRadius = 5.0f;    Bounds zoneBounds;    void Start()
    {
        // Create a bounds object based on the center and size of the zone
        zoneBounds = new Bounds(zoneCenter, zoneSize);
    }    void Update()
    {
        if (mainCamera == null) return;        // Calculate the closest point on the box to the camera
        Vector3 closestPoint = zoneBounds.ClosestPoint(mainCamera.transform.position);
        float distanceToZone = Vector3.Distance(mainCamera.transform.position, closestPoint);        // Determine the interpolation factor based on the transition radius
        float t = Mathf.Clamp01(distanceToZone / transitionRadius);        // Interpolate between the inside and outside fog colors
        RenderSettings.fogColor = Color.Lerp(fogColorInside, fogColorOutside, t);
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| ambientEquatorColor | Ambient lighting coming from the sides. |
| ambientGroundColor | Ambient lighting coming from below. |
| ambientIntensity | How much the light from the Ambient Source affects the Scene. |
| ambientLight | Flat ambient lighting color. |
| ambientMode | Ambient lighting mode. |
| ambientProbe | An ambient probe that captures environment lighting. |
| ambientSkyColor | Ambient lighting coming from above. |
| defaultReflectionMode | Default reflection mode. |
| defaultReflectionResolution | Cubemap resolution for default reflection. |
| flareFadeSpeed | The fade speed of all flares in the Scene. |
| flareStrength | The intensity of all flares in the Scene. |
| fog | Is fog enabled? |
| fogColor | The color of the fog. |
| fogDensity | The density of the exponential fog. |
| fogEndDistance | The ending distance of linear fog. |
| fogMode | Fog mode to use. |
| fogStartDistance | The starting distance of linear fog. |
| haloStrength | Size of the Light halos. |
| reflectionBounces | The number of times a reflection includes other reflections. |
| reflectionIntensity | How much the skybox / custom cubemap reflection affects the Scene. |
| skybox | The global skybox to use. |
| subtractiveShadowColor | The color used for the sun shadows in the Subtractive lightmode. |
| sun | The light used by the procedural skybox. |

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
