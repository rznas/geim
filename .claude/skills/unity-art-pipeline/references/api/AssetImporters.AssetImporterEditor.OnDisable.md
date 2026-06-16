<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor.OnDisable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This function is called when the editor object goes out of scope.

This is also called when the editor is destroyed and can be used for any cleanup code. When scripts are reloaded after compilation has finished, OnDisable will be called, followed by an OnEnable after the script has been loaded.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;public class ExampleScript : AssetImporterEditor
{
    public override void OnDisable()
    {
        base.OnDisable();
        Debug.Log("editor was removed");
    }
}
```

OnDisable cannot be a co-routine.
