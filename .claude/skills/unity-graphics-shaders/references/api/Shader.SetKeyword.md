<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.SetKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The GlobalKeyword to enable or disable. |
| value | The desired keyword state. |

### Description

Sets the state of a global shader keyword.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

When `value` is `true`, this function calls EnableKeyword. Otherwise, it calls DisableKeyword.

The following example creates and caches a `GlobalKeyword`, and provides a function to toggle its state.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class GlobalKeywordExample : MonoBehaviour
{
    private GlobalKeyword exampleFeatureKeyword;    private void Start()
    {
        // Create and cache the GlobalKeyword
        exampleFeatureKeyword = GlobalKeyword.Create("EXAMPLE_FEATURE_ON");
    }    public void ToggleExampleFeature()
    {
        // Get the current state of the global keyword
        bool state = Shader.IsKeywordEnabled(exampleFeatureKeyword);        // Toggle the state
        Shader.SetKeyword(exampleFeatureKeyword, !state);
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, IsKeywordEnabled, enabledGlobalKeywords, globalKeywords.
