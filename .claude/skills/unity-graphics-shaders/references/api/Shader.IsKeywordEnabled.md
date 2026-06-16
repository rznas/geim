<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.IsKeywordEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The GlobalKeyword to check. |

### Returns

**bool** Returns true if the given global shader keyword is enabled. Otherwise, returns false.

### Description

Checks whether a global shader keyword is enabled.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

If you pass a string and a GlobalKeyword with that `name` does not exist in the keywordSpace, this function returns `false`.

The version of this function that takes a string as a parameter is slower than the version that takes a GlobalKeyword. If you call this function more than once, it is best practice to create a GlobalKeyword struct, cache it, and use that.

This example checks whether a global shader keyword with the name `EXAMPLE_FEATURE_ON` is enabled.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class GlobalKeywordExample : MonoBehaviour
{
    private GlobalKeyword exampleFeatureKeyword;    private void Start()
    {
        exampleFeatureKeyword = GlobalKeyword.Create("EXAMPLE_FEATURE_ON");        if (Shader.IsKeywordEnabled(exampleFeatureKeyword))
        {
            Debug.Log("Global shader keyword " + exampleFeatureKeyword.name + " is currently enabled");
        }
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, SetKeyword, enabledGlobalKeywords, globalKeywords.

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The name of the GlobalKeyword to check. |

### Returns

**bool** Returns true if a global shader keyword with the given name exists, and is enabled. Otherwise, returns false.

### Description

Checks whether a global shader keyword is enabled.

If a global shader keyword with the given name does not exist, this function returns false. Otherwise, this version of `IsKeywordEnabled` behaves the same as the version that has a GlobalKeyword as its parameter.
