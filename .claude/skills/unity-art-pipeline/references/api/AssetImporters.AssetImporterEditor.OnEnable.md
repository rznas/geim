<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor.OnEnable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This function is called when the object is loaded.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;public class ExampleScript : AssetImporterEditor
{
    public override void OnEnable()
    {
        base.OnEnable();
        Debug.Log("editor was enabled");
    }
}
```

OnEnable cannot be a co-routine.
