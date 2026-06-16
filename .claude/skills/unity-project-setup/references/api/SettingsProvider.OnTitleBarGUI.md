<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProvider.OnTitleBarGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this function to override drawing the title for the SettingsProvider using IMGUI. This allows you to add custom UI (such as a toolbar button) next to the title. AssetSettingsProvider uses this mecanism to display the "add to preset" and the "help" buttons.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;
using EditorStyles = UnityEditor.EditorStyles;class SimpleIMGUISettingsProvider : SettingsProvider
{
    SerializedObject m_Settings;
    const string k_MyCustomSettingsPath = "Assets/Editor/MyCustomSettings.asset";
    public SimpleIMGUISettingsProvider(string path, SettingsScope scope = SettingsScope.User)
        : base(path, scope) {}    public override void OnGUI(string searchContext)
    {
        // Use IMGUI to display UI:
        EditorGUILayout.PropertyField(m_Settings.FindProperty("m_Number"), new GUIContent("My Number"));
        EditorGUILayout.PropertyField(m_Settings.FindProperty("m_SomeString"), new GUIContent("Some string"));
        m_Settings.ApplyModifiedPropertiesWithoutUndo();
    }    public override void OnTitleBarGUI()
    {
        // This button appears right after the Title of the currently selected SettingsProvider:
        if (GUILayout.Button("Help!", EditorStyles.miniButton))
        {
            Debug.Log("You are on your own.");
        }
    }
}
```
