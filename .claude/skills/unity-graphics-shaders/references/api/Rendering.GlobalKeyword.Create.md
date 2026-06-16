<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GlobalKeyword.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the global shader keyword. |

### Returns

**GlobalKeyword** Returns a new instance of the GlobalKeyword class.

### Description

Creates and returns a GlobalKeyword that represents a new or existing global shader keyword.

Unity creates and returns a `GlobalKeyword` struct to represent the global shader keyword with the given name. If a global shader keyword with the given name does not yet exist in Unity's internal list of global shader keywords, Unity adds a global shader keyword with the given name to the list.

The following example creates a `GlobalKeyword` struct with the name `EXAMPLE_FEATURE_ON`, and caches it. It provides functions to enable and disable it.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class GlobalKeywordExample : MonoBehaviour
{
    private GlobalKeyword exampleFeatureKeyword;    private void Start()
    {
        exampleFeatureKeyword = GlobalKeyword.Create("EXAMPLE_FEATURE_ON");
    }    public void EnableExampleFeature()
    {
        Shader.EnableKeyword(exampleFeatureKeyword);
    }    public void DisableExampleFeature()
    {
        Shader.DisableKeyword(exampleFeatureKeyword);
    }
}
```

Additional resources: Shader variants and keywords, LocalKeyword, GlobalKeyword, EnableKeyword, DisableKeyword, SetKeyword, IsKeywordEnabled, enabledGlobalKeywords, globalKeywords.
