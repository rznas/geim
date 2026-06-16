<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProvider.OnActivate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| searchContext | Search context in the search box on the Settings window. |
| rootElement | Root of the UIElements tree. If you add to this root, the SettingsProvider uses UIElements instead of calling SettingsProvider.OnGUI to build the UI. If you do not add to this VisualElement, then you must use the IMGUI to build the UI. |

### Description

Use this function to implement a handler for when the user clicks on the Settings in the Settings window. You can fetch a settings Asset or set up UIElements UI from this function.

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
        // Called when the user clicks on the MyCustom element in the Settings window
        m_Settings = new SerializedObject(AssetDatabase.LoadAssetAtPath<UnityEngine.Object>(k_MyCustomSettingsPath));
    }    public override void OnDeactivate()
    {
        // User selected another setting or closed the Settings window
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

This example shows how to build a SettingsProvider based on UIElements: you need to add any children to the rootElement passed to OnActivate.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;
using UnityEditor.UIElements;class SimpleUIElementsSettingsProvider : SettingsProvider
{
    SerializedObject m_Settings;
    const string k_MyCustomSettingsPath = "Assets/Editor/MyCustomSettings.asset";
    public SimpleUIElementsSettingsProvider(string path, SettingsScope scope = SettingsScope.User)
        : base(path, scope) {}    public override void OnActivate(string searchContext, VisualElement rootElement)
    {
        // Called when the user clicks on the MyCustom element in the Settings window
        m_Settings = new SerializedObject(AssetDatabase.LoadAssetAtPath<UnityEngine.Object>(k_MyCustomSettingsPath));        // rootElement is a VisualElement. If you add any children to it, you are using UIElements to build the SettingsProvider
        var styleSheet = AssetDatabase.LoadAssetAtPath<StyleSheet>("Assets/Editor/settings_ui.uss");
        rootElement.styleSheets.Add(styleSheet);
        var title = new Label()
        {
            text = "Custom UI Elements"
        };
        title.AddToClassList("title");
        rootElement.Add(title);        rootElement.Add(new PropertyField(m_Settings.FindProperty("m_SomeString")));
        rootElement.Add(new PropertyField(m_Settings.FindProperty("m_Number")));        rootElement.Bind(m_Settings);
    }    public override void OnGUI(string searchContext)
    {
        // This function is never called since UIElements is drawing the UI.
    }
}
```
