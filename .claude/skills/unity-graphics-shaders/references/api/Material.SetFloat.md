<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| value | Float value to set. |
| name | Property name, e.g. "_Glossiness". |

### Description

Sets a named float value.

When setting values on materials using the Standard Shader, you should be aware that you may need to use EnableKeyword to enable features of the shader that were not previously in use. For more detail, read Accessing Materials via Script.

Additional resources: GetFloat, Materials, ShaderLab documentation, Shader.PropertyToID, Properties in Shader Programs.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer> ();        // Use the Specular shader on the material
        rend.material.shader = Shader.Find("Specular");
    }    void Update()
    {
        // Animate the Shininess value
        float shininess = Mathf.PingPong(Time.time, 1.0f);
        rend.material.SetFloat("_Shininess", shininess);
    }
}
```
