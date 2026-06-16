<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.EnableKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The local keyword to enable. |

### Description

Enables a local shader keyword for this ray tracing shader.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

If you pass in a LocalKeyword and it does not exist in the keywordSpace, this function has no effect. If you pass a string and a LocalKeyword with that `name` does not exist in the keywordSpace, this function has no effect.

The version of this function that takes a string as a parameter is slower than the version that takes a LocalKeyword. If you call this function more than once, it is best practice to create a LocalKeyword struct, cache it, and use that.

**Note:** A `LocalKeyword` is specific to a single Shader, ComputeShader or RayTracingShader instance. You cannot use it with other Shader, ComputeShader or RayTracingShader instances, even if they declare keywords with the same name.

The following example creates a `LocalKeyword` struct with the name `EXAMPLE_FEATURE_ON`, and caches it. It provides functions to enable and disable it.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class RayTracingShaderKeywordExample : MonoBehaviour
{
    public RayTracingShader rayTracingShader;
    private LocalKeyword exampleFeatureKeyword;    void Start()
    {
        // Create and cache the LocalKeyword
        exampleFeatureKeyword = new LocalKeyword(rayTracingShader, "EXAMPLE_FEATURE_ON");
    }    public void EnableExampleFeature()
    {
        rayTracingShader.EnableKeyword(exampleFeatureKeyword);
    }    public void DisableExampleFeature()
    {
        rayTracingShader.DisableKeyword(exampleFeatureKeyword);
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, DisableKeyword, SetKeyword, keywordSpace, IsKeywordEnabled, enabledKeywords, shaderKeywords.
