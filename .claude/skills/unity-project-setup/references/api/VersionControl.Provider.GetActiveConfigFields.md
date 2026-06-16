<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.GetActiveConfigFields.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the configuration fields for the currently active version control plugin.

The task can be useful if, for example, you need to change the version control plugin's credentials.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/ConfigField")]
    public static void ExampleConfigField()
    {
        ConfigField[] exampleConfigField;
        exampleConfigField = Provider.GetActiveConfigFields();
        EditorUserSettings.SetConfigValue(exampleConfigField[0].name, "username2");
        Provider.UpdateSettings().Wait();
    }
}
```

The code above will fetch the currectly selected version control's config field names, change the first field to "username2" and update the version control settings.
