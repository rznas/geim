<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor.Apply.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Saves any changes from the Editor's control into the asset's import settings object.

Can be overridden as required. Gets called when changes to settings are being applied.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;public class ExampleScript : AssetImporterEditor
{
    protected override void Apply()
    {
        base.Apply();
        Debug.Log("The Importer has been applied.");
    }
}
```
