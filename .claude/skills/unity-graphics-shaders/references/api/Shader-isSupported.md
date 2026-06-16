<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader-isSupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Can this shader run on the end-users graphics card? (Read Only)

Returns true if the shader itself or any fallbacks setup in the shader are supported. Most often you use this when implementing special effects.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Disable renderer if material's shader is not supported
        Renderer rend = GetComponent<Renderer>();        if (!rend.material.shader.isSupported)
        {
            rend.enabled = false;
        }
    }
}
```

Additional resources: Material class, ShaderLab documentation.
