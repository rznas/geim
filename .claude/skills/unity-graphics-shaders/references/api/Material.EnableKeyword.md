<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.EnableKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The LocalKeyword to enable. |
| keyword | The name of the LocalKeyword to enable. |

### Description

Enables a local shader keyword for this material.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

If you pass in a LocalKeyword and it does not exist in the Shader.keywordSpace for the shader that this material uses, this function has no effect. If you pass a string and a LocalKeyword with that `name` does not exist in the Shader.keywordSpace for the shader that this material uses, this function has no effect.

The version of this function that takes a string as a parameter is slower than the version that takes a LocalKeyword. If you call this function more than once, it is best practice to create a LocalKeyword struct, cache it, and use that.

**Note:** A `LocalKeyword` is specific to a single Shader or ComputeShader instance. You cannot use it with other Shader or ComputeShader instances, even if they declare keywords with the same name.

The following example creates a `LocalKeyword` struct with the name `EXAMPLE_FEATURE_ON`, and caches it. It provides functions to enable and disable it.

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
    }    public void EnableExampleFeature()
    {
        material.EnableKeyword(exampleFeatureKeyword);
    }    public void DisableExampleFeature()
    {
        material.DisableKeyword(exampleFeatureKeyword);
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, DisableKeyword, SetKeyword, Shader.keywordSpace, IsKeywordEnabled, enabledKeywords, shaderKeywords.
