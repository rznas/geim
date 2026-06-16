<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetInteger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Returns

**int** The integer property value. Returns `0` if the integer property is not found.

### Description

Get a named integer value. If the integer property is not found an exception is thrown.

Additional resources: SetInteger, Materials, ShaderLab documentation, Shader.PropertyToID.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Renderer rend = GetComponent<Renderer> ();
        rend.material.shader = Shader.Find("MyFlipBook");
        print(rend.material.GetInteger("_NumFrames"));
    }
}
```
