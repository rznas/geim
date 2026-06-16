<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-shaderKeywords.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array containing names of the local shader keywords that are currently enabled for this material.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

**Note:** It is more efficient to use enabledKeywords, which returns an array of LocalKeyword structs.

This example prints the names of all currently enabled local shader keywords for a material.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    public Material material;    private void Start()
    {
        foreach (var localKeywordName in material.shaderKeywords)
        {
            Debug.Log("Local shader keyword " + localKeywordName + " is currently enabled");
        }
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, SetKeyword, Shader.keywordSpace, IsKeywordEnabled, enabledKeywords.
