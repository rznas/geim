<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader-keywordSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The local keyword space of this shader.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

`keywordSpace` contains:

- All keywords declared in the source file.
- All keywords declared in dependencies of that source file. This means all Shaders that are included via the Fallback command, and all Passes that are included via the UsePass command.
- All built-in keywords.

This property only describes the space of all local keywords for this shader. To change the state of any keyword, see Material.EnableKeyword and Material.DisableKeyword.

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
