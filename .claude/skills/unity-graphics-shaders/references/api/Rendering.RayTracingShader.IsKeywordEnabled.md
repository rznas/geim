<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.IsKeywordEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The local keyword to check. |

### Returns

**bool** Returns true if the given LocalKeyword is enabled for this ray tracing shader. Otherwise, returns false.

### Description

Checks whether a local shader keyword is enabled for this ray tracing shader.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

If you pass in a LocalKeyword and it does not exist in the keywordSpace, this function returns `false`. If you pass a string and a LocalKeyword with that `name` does not exist in the keywordSpace, this function returns `false`.

The version of this function that takes a string as a parameter is slower than the version that takes a LocalKeyword. If you call this function more than once, it is best practice to create a LocalKeyword struct, cache it, and use that.

**Note:** A `LocalKeyword` is specific to a single Shader, ComputeShader or RayTracingShader instance. You cannot use it with other Shader, ComputeShader or RayTracingShader instances, even if they declare keywords with the same name.

This example iterates over the local shader keywords in the local keyword space for a ray tracing shader. It determines whether they are overridden by a global shader keyword, and prints their state.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    public RayTracingShader rayTracingShader;    void Start()
    {
        CheckShaderKeywordState();
    }    void CheckShaderKeywordState()
    {
        // Get all the local keywords that affect the RayTracingShader
        var keywordSpace = rayTracingShader.keywordSpace;        // Iterate over the local keywords
        foreach (var localKeyword in keywordSpace.keywords)
        {
            // If the local keyword is overridable,
            // and a global keyword with the same name exists and is enabled,
            // then Unity uses the global keyword state
            if (localKeyword.isOverridable && Shader.IsKeywordEnabled(localKeyword.name))
            {
                Debug.Log("Local keyword with name of " + localKeyword.name + " is overridden by a global keyword, and is enabled");
            }
            // Otherwise, Unity uses the local keyword state
            else
            {
                var state = rayTracingShader.IsKeywordEnabled(localKeyword) ? "enabled" : "disabled";
                Debug.Log("Local keyword with name of " + localKeyword.name + " is " + state);
            }
        }
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, SetKeyword, keywordSpace, enabledKeywords, shaderKeywords.
