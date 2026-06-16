<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.IsKeywordEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The LocalKeyword to check. |
| keyword | The name of the LocalKeyword to check. |

### Returns

**bool** Returns `true` if a LocalKeyword with the given name is enabled for this material.

### Description

Checks whether a local shader keyword is enabled for this material.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

If you pass in a LocalKeyword and it does not exist in the Shader.keywordSpace for the shader that this material uses, this function returns `false`. If you pass a string and a LocalKeyword with that `name` does not exist in the Shader.keywordSpace for the shader that this material uses, this function returns `false`.

The version of this function that takes a string as a parameter is slower than the version that takes a LocalKeyword. If you call this function more than once, it's best practice to create a LocalKeyword struct, cache it, and use that.

**Note:** A `LocalKeyword` is specific to a single Shader or ComputeShader instance. You cannot use it with other Shader or ComputeShader instances, even if they declare keywords with the same name.

```csharp
using UnityEngine;
using UnityEngine.Rendering;

// This example iterates over the local shader keywords in the local
// keyword space for a graphics shader. It determines whether each
// keyword is overridden by a global shader keyword and prints its
// state.
public class KeywordExample : MonoBehaviour
{
    public Material material;

    void Start()
    {
        CheckShaderKeywordState();
    }

    void CheckShaderKeywordState()
    {
        // Get the instance of the Shader class that the material uses
        Shader shader = material.shader;

        // Get all the local keywords that affect the Shader
        LocalKeywordSpace keywordSpace = shader.keywordSpace;

        // Iterate over the local keywords
        foreach (LocalKeyword localKeyword in keywordSpace.keywords)
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
                string state = material.IsKeywordEnabled(localKeyword) ? "enabled" : "disabled";
                Debug.Log("Local keyword with name of " + localKeyword.name + " is " + state);
            }
        }
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, SetKeyword, Shader.keywordSpace, enabledKeywords, shaderKeywords.
