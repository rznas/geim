<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.CopyPropertiesFromMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Copy properties from other material into this material.

This function copies property values (both serialized and set at runtime), as well as shader keywords, render queue and global illumination flags from the other material. Material's shader is not changed.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Attach this to a gameObject that has a renderer.
    // Copies any property mat has and assigns it to this transform material    Material mat;    void Start()
    {
        GetComponent<Renderer> ().material.CopyPropertiesFromMaterial(mat);
    }
}
```
