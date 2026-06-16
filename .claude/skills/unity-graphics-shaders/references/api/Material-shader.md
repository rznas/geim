<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-shader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The shader used by the material.

Additional resources: Shader.Find method, Materials, ShaderLab documentation.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Toggle between Diffuse and Transparent/Diffuse shaders
    // when space key is pressed    Shader shader1;
    Shader shader2;
    Renderer rend;
    void Start()
    {
        rend = GetComponent<Renderer> ();
        shader1 = Shader.Find("Diffuse");
        shader2 = Shader.Find("Transparent/Diffuse");
    }    void Update()
    {
        if (Input.GetButtonDown("Jump"))
        {
            if (rend.material.shader == shader1)
            {
                rend.material.shader = shader2;
            }
            else
            {
                rend.material.shader = shader1;
            }
        }
    }
}
```
