<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader-globalKeywords.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array containing the global shader keywords that currently exist. This includes enabled and disabled global shader keywords.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

This example prints the name and state of all currently registered global shader keywords.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    private void Start()
    {
        foreach (var globalKeyword in Shader.globalKeywords)
        {
            var state = Shader.IsKeywordEnabled(globalKeyword) ? "enabled" : "disabled";
            Debug.Log("A global shader shader keyword with the name " + globalKeyword.name + " exists, and is currently " + state);
        }
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, SetKeyword, IsKeywordEnabled, enabledGlobalKeywords.
