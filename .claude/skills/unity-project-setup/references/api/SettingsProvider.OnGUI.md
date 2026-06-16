<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProvider.OnGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| searchContext | Search context for the Settings window. Used to show or hide relevant properties. |

### Description

Use this function to draw the UI based on IMGUI. This assumes you haven't added any children to the rootElement passed to the OnActivate function.

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
        // User selected another setting or closed the Settings window.
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
