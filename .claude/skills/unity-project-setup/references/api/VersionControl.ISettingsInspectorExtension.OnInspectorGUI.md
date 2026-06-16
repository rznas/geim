<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.ISettingsInspectorExtension.OnInspectorGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to add custom GUI controls to the version control settings in the inspector.

```csharp
using UnityEditor;
using UnityEditor.VersionControl;[VersionControl("Custom")]
public class CustomVersionControlObject : VersionControlObject, ISettingsInspectorExtension
{
    public void OnInspectorGUI()
    {
        var oldUsername = EditorUserSettings.GetConfigValue("vcCustomUsername");
        var newUsername = EditorGUILayout.TextField("Username:", oldUsername);
        if (newUsername != oldUsername)
            EditorUserSettings.SetConfigValue("vcCustomUsername", newUsername);
    }
}
```

Additional resources: ISettingsInspectorExtension, VersionControlObject.
