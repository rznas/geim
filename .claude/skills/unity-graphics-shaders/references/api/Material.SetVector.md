<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetVector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name, e.g. "_WaveAndDistance". |
| value | Vector value to set. |

### Description

Sets a value for a named vector in the material.

Four component vectors and colors are the same in Unity shaders. `SetVector` does almost exactly the same as SetColor just the input data type is different (`xyzw` in the vector becomes `rgba` in the color). The only difference is that color values are be converted from sRGB to Linear value, when using linear color space (see properties in shader programs).

You can also use SetVector to assign values to float2 or float3 properties defined in the shader.

Additional resources: SetColor, GetVector, Shader.PropertyToID, Properties in Shader Programs.

```csharp
using UnityEngine;public class SetVectorExample : MonoBehaviour
{
    public Material targetMaterial;    void Start()
    {
        Vector4 customVector = new Vector4(1.0f, 0.5f, 0.0f, 1.0f);        // Set the vector to a shader property named "_CustomVector"
        targetMaterial.SetVector("_CustomVector", customVector);
    }
}
```
