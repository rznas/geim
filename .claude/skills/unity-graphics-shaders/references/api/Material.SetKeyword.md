<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The LocalKeyword to enable or disable. |
| value | The desired keyword state. |

### Description

Sets the state of a local shader keyword for this material.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

When `value` is `true`, this function calls EnableKeyword. Otherwise, it calls DisableKeyword.

If the LocalKeyword does not exist in the Shader.keywordSpace for the shader that this material uses, this function has no effect.

The following example creates and caches a `LocalKeyword`, and provides a function to toggle its state.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class MaterialKeywordExample : MonoBehaviour
{
    public Material material;
    private LocalKeyword exampleFeatureKeyword;    void Start()
    {
        // Get the instance of the Shader class that this material uses
        var shader = material.shader;        // Create and cache the LocalKeyword
        exampleFeatureKeyword = new LocalKeyword(shader, "EXAMPLE_FEATURE_ON");
    }    public void ToggleExampleFeature()
    {
        // Get the current state of the local keyword
        bool state = material.IsKeywordEnabled(exampleFeatureKeyword);        // Toggle the state
        material.SetKeyword(exampleFeatureKeyword, !state);
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, Shader.keywordSpace, IsKeywordEnabled, enabledKeywords, shaderKeywords.
