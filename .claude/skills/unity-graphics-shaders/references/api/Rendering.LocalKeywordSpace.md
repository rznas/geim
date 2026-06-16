<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LocalKeywordSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the local keyword space of a Shader, ComputeShader or RayTracingShader.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

When you declare a shader keyword in the source file for a Shader, ComputeShader or RayTracingShader, Unity represents the keyword with a LocalKeyword and stores it in a `LocalKeywordSpace`.

What keywords a space contains depends on the type of shader:

- For a Shader, see Shader.keywordSpace.
- For a ComputeShader, see ComputeShader.keywordSpace.
- For a RayTracingShader, see RayTracingShader.keywordSpace.

Additional resources: Introduction to shader variants, LocalKeyword, GlobalKeyword, ComputeShader.keywordSpace, RayTracingShader.keywordSpace, Shader.keywordSpace.

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

### Properties

| Property | Description |
| --- | --- |
| keywordCount | The number of local shader keywords in this local keyword space. (Read Only) |
| keywordNames | An array containing the names of all local shader keywords in this local keyword space. (Read Only) |
| keywords | An array containing all LocalKeyword structs in this local keyword space. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| FindKeyword | Searches for a local shader keyword with a given name in the keyword space. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Returns true if the local shader keyword spaces are not the same. Otherwise, returns false. |
| operator == | Returns true if the local shader keyword spaces are the same. Otherwise, returns false. |
