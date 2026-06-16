<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader-keywordSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The local keyword space of this ray tracing shader.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

`keywordSpace` represents all keywords declared in the source file for a ray tracing shader. For information about declaring and using shader keywords in shader source files, see Shader keywords.

This example iterates over the local shader keywords in the local keyword space for a ray tracing shader. It determines whether they are overridden by a global shader keyword, and prints their state.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    public RayTracingShader rayTracingShader;    void Start()
    {
        CheckShaderKeywordState();
    }    void CheckShaderKeywordState()
    {
        // Get all the local keywords that affect the ray tracing shader
        var keywordSpace = rayTracingShader.keywordSpace;        // Iterate over the local keywords
        foreach (var localKeyword in keywordSpace.keywords)
        {
            // If the local keyword is overridable,
            // and a global keyword with the same name exists and is enabled,
            // then Unity uses the global keyword state
            if (localKeyword.isOverridable && Shader.IsKeywordEnabled(localKeyword.name))
            {
                Debug.Log("Local keyword with name of " + localKeyword.name + " is overridden by a global keyword, and is enabled");
            }
            // Otherwise, Unity uses the local keyword state
            else
            {
                var state = rayTracingShader.IsKeywordEnabled(localKeyword) ? "enabled" : "disabled";
                Debug.Log("Local keyword with name of " + localKeyword.name + " is " + state);
            }
        }
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, SetKeyword, IsKeywordEnabled, enabledKeywords, shaderKeywords.
