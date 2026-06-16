<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.DisableKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The GlobalKeyword to disable. |
| keyword | The name of the GlobalKeyword to disable. |

### Description

Disables a global shader keyword.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

If you pass a string and a GlobalKeyword with the given name does not exist, this function has no effect.

The version of this function that takes a string as a parameter is slower than the version that takes a GlobalKeyword. If you call this function more than once, it is best practice to create a GlobalKeyword struct, cache it, and use that.

The following example creates a `GlobalKeyword` struct with the name `EXAMPLE_FEATURE_ON`, and caches it. It provides functions to enable and disable it.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class GlobalKeywordExample : MonoBehaviour
{
    private GlobalKeyword exampleFeatureKeyword;    private void Start()
    {
        var exampleFeatureKeyword = GlobalKeyword.Create("EXAMPLE_FEATURE_ON");
    }    public void EnableExampleFeature()
    {
        Shader.EnableKeyword(exampleFeatureKeyword);
    }    public void DisableExampleFeature()
    {
        Shader.DisableKeyword(exampleFeatureKeyword);
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, SetKeyword, IsKeywordEnabled, enabledGlobalKeywords, globalKeywords.
