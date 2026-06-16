<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProvider.OnDeactivate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this function to implement a handler for when the user clicks on another setting or when the Settings window closes.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;class SimpleIMGUISettingsProvider : SettingsProvider
{
    SerializedObject m_Settings;
    const string k_MyCustomSettingsPath = "Assets/Editor/MyCustomSettings.asset";
    public SimpleIMGUISettingsProvider(string path, SettingsScope scope = SettingsScope.User)
        : base(path, scope) {}    public override void OnActivate(string searchContext, VisualElement rootElement)
    {
        // Called when the user clicks on the MyCustom element in the Settings window.
        m_Settings = new SerializedObject(AssetDatabase.LoadAssetAtPath<UnityEngine.Object>(k_MyCustomSettingsPath));
    }    public override void OnDeactivate()
    {
        // User selected another settings or closed the Settings window.
        m_Settings = null;
    }    public override void OnGUI(string searchContext)
    {
        // Use IMGUI to display UI:
        EditorGUILayout.PropertyField(m_Settings.FindProperty("m_Number"), new GUIContent("My Number"));
        EditorGUILayout.PropertyField(m_Settings.FindProperty("m_SomeString"), new GUIContent("Some string"));
        m_Settings.ApplyModifiedPropertiesWithoutUndo();
    }
}
```
