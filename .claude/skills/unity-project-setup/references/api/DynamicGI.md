<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DynamicGI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Query and control Enlighten Realtime Global Illumination.

Use the DynamicGI static class to query and control the global Enlighten instance. Enlighten is a subsystem which provides Realtime Global Illumination. This class is applicable only when **Realtime Global Illumination** is enabled in the **Scene** tab of the **Lighting** window.

You can use this class to query the internal state of Enlighten. For example, you can use DynamicGI.isConverged to determine whether to show a loading screen.

Some properties allow you to control the runtime cost of Enlighten. For example, you can use DynamicGI.materialUpdateTimeSlice to determine how much computation is done every frame, and DynamicGI.updateThreshold to control how often realtime lightmaps are updated.

Enlighten Realtime Global Illumination takes the assigned Skybox Material into account in its lighting calculations. In most situations, it detects and processes any changes to the Skybox Material automatically (for example, when you change the Skybox Material). However, there are situations when Enlighten can't detect the change automatically (for example, when the Skybox Material's shader depends on global variables such as system time). In this case, you can call DynamicGI.UpdateEnvironment to manually schedule an evaluation of the current Skybox Material. You can also use DynamicGI.SetEnvironmentData to skip the Skybox Material evaluation and pass in raw cubemap values instead.

For more information on Enlighten, refer to Introduction to Realtime Global Illumination using Enlighten.

Additional resources: RendererExtensions.UpdateGIMaterials, TerrainExtensions.UpdateGIMaterials.

```csharp
using UnityEngine;// Attach this script to a Game Object to animate the emission used
// by Enlighten Realtime GI. The Game Object's Material is unaffected.
public class AnimateEmission : MonoBehaviour
{
    public Color color1 = Color.red;
    public Color color2 = Color.blue;
    public float intensity = 2.0f;
    public float speed = 0.5f;    void Update()
    {
        // This value changes gradually from 0 to 1 to 0 in a cycle.
        var pingpong = Mathf.PingPong(Time.time * speed, 1.0f);        // Determine the new color for this frame.
        var newColor = Color.Lerp(color1, color2, pingpong) * intensity;        // Extract the MeshRenderer from the game object.
        var renderer = gameObject.GetComponent<MeshRenderer>();        // Apply the new emissive color using the MeshRenderer.
        DynamicGI.SetEmissive(renderer, newColor);
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| indirectScale | Allows for scaling the contribution coming from real-time & baked lightmaps.Note: this value can be set in the Lighting Window UI and it is serialized, that is not the case for other properties in this class. |
| isConverged | Is precomputed Enlighten Realtime Global Illumination output converged? |
| materialUpdateTimeSlice | The number of milliseconds that can be spent on material updates. |
| synchronousMode | When enabled, new dynamic Global Illumination output is shown in each frame. |
| updateThreshold | Determines the percentage change in lighting intensity that triggers Unity to recalculate the real-time lightmap. |

### Static Methods

| Method | Description |
| --- | --- |
| SetEmissive | Allows to set an emissive color for a given renderer quickly, without the need to render the emissive input for the entire system. |
| SetEnvironmentData | Allows overriding the distant environment lighting for Enlighten Realtime Global Illumination, without changing the Skybox Material. |
| UpdateEnvironment | Schedules an update of the environment cubemap. |
| UpdateMaterials | Schedules an update of the albedo and emissive textures of a system that contains the renderer or the terrain. |
