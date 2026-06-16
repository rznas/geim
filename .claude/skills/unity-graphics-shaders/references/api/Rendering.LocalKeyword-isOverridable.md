<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LocalKeyword-isOverridable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether this local shader keyword can be overridden by a global shader keyword. (Read Only).

When the state of a local shader keyword and a global shader keyword with the same name contradict each other, Unity uses this value to determine whether the keyword is enabled or disabled.

- When `isOverridable` is `true`: If a GlobalKeyword with the same `name` exists and is enabled, Unity uses the state of the `GlobalKeyword`. Otherwise, Unity uses the state of the `LocalKeyword`.
- When `isOverridable` is `false`: Unity always uses the state of the `LocalKeyword`.

To set the value of `isOverridable` to `true`, declare the shader keyword with **global scope**. To set the value of `isOverridable` to `false`, declare the shader keyword with **local scope**. For information on declaring shader keywords with local or global scope, see Shader keywords: Declaring keywords with local or global scope.

**Note:** If a keyword is declared with local or global scope in a Shader source file, and a keyword with the same name is declared in one of its dependencies, the scope in the source file overrides the scope in the dependencies. Dependencies comprise all Shaders that are included via the Fallback command, and Passes that are included via the UsePass command.

This example iterates over the local shader keywords in the local keyword space for a material. It determines whether they are overridden by a global shader keyword, and prints their state.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class KeywordExample : MonoBehaviour
{
    public Material material;    void Start()
    {
        CheckShaderKeywordState();
    }    void CheckShaderKeywordState()
    {
        // Get the instance of the Shader class that the material uses
        var shader = material.shader;        // Get all the local keywords that affect the Shader
        var keywordSpace = shader.keywordSpace;        // Iterate over the local keywords
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
                var state = material.IsKeywordEnabled(localKeyword) ? "enabled" : "disabled";
                Debug.Log("Local keyword with name of " + localKeyword.name + " is " + state);
            }
        }
    }
}
```

Additional resources: Shader variants and keywords, GlobalKeyword.
