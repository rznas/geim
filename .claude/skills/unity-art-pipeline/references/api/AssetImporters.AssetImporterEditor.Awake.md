<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor.Awake.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This function is called when the Editor script is started.

Awake is called as the AssetImporterEditor script starts. This happens as the editor is launched and is similar to MonoBehaviour.Awake.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;public class ExampleScript : AssetImporterEditor
{
    protected override void Awake()
    {
        base.Awake();
        Debug.Log("Awake");
    }
}
```

OnDisable cannot be a co-routine.
