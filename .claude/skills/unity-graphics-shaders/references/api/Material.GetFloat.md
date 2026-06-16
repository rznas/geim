<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Get a named float value.

Additional resources: SetFloat, Materials, ShaderLab documentation, Shader.PropertyToID.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Renderer rend = GetComponent<Renderer> ();
        rend.material.shader = Shader.Find("Specular");
        print(rend.material.GetFloat("_Shininess"));
    }
}
```
