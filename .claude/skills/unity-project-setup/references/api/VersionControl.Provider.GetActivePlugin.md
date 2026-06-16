<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.GetActivePlugin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the current, user selected verson control Plugin.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/GetActivePlugin")]
    public static void ExampleGetActivePlugin()
    {
        Plugin plugin;
        plugin = Provider.GetActivePlugin();
        Debug.Log(plugin.name);
    }
}
```

The code above fetches the name of the currently used version control system.
