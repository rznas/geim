<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader-enabledKeywords.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array containing the local shader keywords that are currently enabled for this ray tracing shader.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

This example prints the names of all currently enabled local shader keywords for a ray tracing shader.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    public RayTracingShader rayTracingShader;    private void Start()
    {
        foreach (var localKeyword in rayTracingShader.enabledKeywords)
        {
            Debug.Log("Local shader keyword " + localKeyword.name + " is currently enabled");
        }
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, SetKeyword, keywordSpace, IsKeywordEnabled, shaderKeywords.
