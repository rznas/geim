<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name. For example, "_Color" in Built-in Render Pipeline, "_BaseColor" in URP. |
| value | Color value to set. |

### Description

Sets the value of a color- or vector-type property.

Many shaders use more than one color. Use SetColor to change the color (identified by shader property name, or unique property name ID).

The behavior of this method depends on aspects of the target property and the project's active color space. A material property is considered to be in gamma space if either of the following are true:

- The property is declared as a color and has the `[HDR]` attribute
- The property is declared as a color or vector and has the `[Gamma]` attribute

If this method's target property is in gamma space and the project is in linear space, `value` is converted to linear space before being stored. Otherwise, `value` is stored without modification. For more information on color spaces, refer to Color spaces in Unity.

When setting color values on materials using the Standard Shader, you should be aware that you may need to use EnableKeyword to enable features of the shader that were not previously in use. For more detail, read Accessing Materials via Script.

Color property names are defined in the `Properties` section in the shader code. Here are examples of the color properties in Unity pre-built shaders: 
 `_Color`: the main color of a material (URP: `_BaseColor`). You can access this shader property via the color property. 
 `_EmissionColor`: the emissive color of a material. For more information on defining properties, refer to Properties in Shader Programs.

Additional resources: color, GetColor, Shader.PropertyToID.

```csharp
//Attach this script to any GameObject in your scene to spawn a cube and change the material color
using UnityEngine;public class Example : MonoBehaviour
{
   void Start()
   {
       // Create a new cube primitive to set the color on
       GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);       // Get the Renderer component from the new cube
       var cubeRenderer = cube.GetComponent<Renderer>();       // Use SetColor to set the main color shader property
       cubeRenderer.material.SetColor("_Color", Color.red);
       // If your project uses URP, uncomment the following line and use it instead of the previous line
       // cubeRenderer.material.SetColor("_BaseColor", Color.red);
   }
}
```
