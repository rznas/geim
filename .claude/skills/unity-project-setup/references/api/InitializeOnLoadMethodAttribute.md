<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InitializeOnLoadMethodAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allow an editor class method to be initialized when Unity loads without action from the user.

```csharp
using UnityEngine;
using UnityEditor;class MyClass
{
    [InitializeOnLoadMethod]
    static void OnProjectLoadedInEditor()
    {
        Debug.Log("Project loaded in Unity Editor");
    }
}
```
