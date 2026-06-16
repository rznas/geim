<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.CopyMatchingPropertiesFromMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mat | The Material to copy from. |

### Description

Copies properties, keyword states and settings from `mat` to this material, but only if they exist in both materials.

This method copies the following properties if they exist in both materials:

- Serialized material properties.
- Keyword states, if the keywords exist in both shaders.
- Material settings: Material.doubleSidedGI, Material.enableInstancing, Material.renderQueue and Material.globalIlluminationFlags.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Attach this script to a GameObject that has a renderer.
    // Copies any property from mat and assigns it to this transform's material, if the property exists in both materials.    Material mat;    void Start()
    {
        GetComponent<Renderer>().material.CopyMatchingPropertiesFromMaterial(mat);
    }
}
```
