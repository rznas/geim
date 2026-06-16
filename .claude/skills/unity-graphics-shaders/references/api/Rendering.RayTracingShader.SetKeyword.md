<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.SetKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The LocalKeyword keyword to enable or disable. |
| value | The desired keyword state. |

### Description

Sets the state of a local shader keyword for this ray tracing shader.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

When `value` is `true`, this function calls EnableKeyword. Otherwise, it calls DisableKeyword.

If the LocalKeyword does not exist in the keywordSpace, this function has no effect.

The following example toggles the state of all local shader keywords in a ray tracing shader.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    public RayTracingShader rayTracingShader;    void Start()
    {
        // Get all the local keywords that affect the RayTracingShader
        var keywordSpace = rayTracingShader.keywordSpace;        // Iterate over the local keywords
        foreach (var localKeyword in keywordSpace.keywords)
        {
            // Get the current state of the local keyword
            bool state = rayTracingShader.IsKeywordEnabled(localKeyword);            // Toggle the state
            rayTracingShader.SetKeyword(localKeyword, !state);
        }
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, keywordSpace, IsKeywordEnabled, enabledKeywords, shaderKeywords.
