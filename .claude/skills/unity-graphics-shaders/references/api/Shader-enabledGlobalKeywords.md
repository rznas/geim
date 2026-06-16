<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader-enabledGlobalKeywords.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array containing the global shader keywords that are currently enabled.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

This example prints the names of all currently enabled global shader keywords.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    private void Start()
    {
        foreach (var globalKeyword in Shader.enabledGlobalKeywords)
        {
            Debug.Log("Global shader keyword " + globalKeyword.name + " is currently enabled");
        }
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, SetKeyword, IsKeywordEnabled, globalKeywords.
