<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

SettingsProvider is the configuration class that specifies how a Project setting or a preference should appear in the Settings or Preferences window.

In order to add new Project settings or preference pages, define a SettingsProvider. The SettingsProvider class provides the hooks to display any UI (using either IMGUI or UIElements to draw it). It also provides an API that allows you to specify keywords which are used in the Settings and Preferences windows in two ways:

1) The search bar filters out SettingsProviders that don't have matching keywords.

2) Property Labels are highlighted with matching keywords.

This example demonstrates how to configure a SettingsProvider with IMGUI:

```csharp
using UnityEditor;
using UnityEngine;class MyCustomSettings : ScriptableObject
{
    const string AssetPath = "Assets/Editor/MyCustomSettings.asset";    [SerializeField] int m_Number = 42;
    [SerializeField] string m_SomeString = "The answer to the universe";    internal static MyCustomSettings GetOrCreate()
    {
        MyCustomSettings settings = AssetDatabase.LoadAssetAtPath<MyCustomSettings>(AssetPath);
        if (settings == null)
        {
            settings = CreateInstance<MyCustomSettings>();
            AssetDatabase.CreateAsset(settings, AssetPath);
            AssetDatabase.SaveAssets();
        }
        return settings;
    }    internal static SerializedObject GetSO() => new SerializedObject(GetOrCreate());
}static class MyCustomSettingsIMGUI
{
    [SettingsProvider]
    public static SettingsProvider CreateProvider()
    {
        return new SettingsProvider("Project/My Custom Settings", SettingsScope.Project)
        {
            label = "My Custom",
            guiHandler = _ =>
            {
                SerializedObject serializedObject = MyCustomSettings.GetSO();
                EditorGUILayout.PropertyField(serializedObject.FindProperty("m_Number"), new GUIContent("My Number"));
                EditorGUILayout.PropertyField(serializedObject.FindProperty("m_SomeString"), new GUIContent("My String"));
                serializedObject.ApplyModifiedPropertiesWithoutUndo();
            },
            keywords = new System.Collections.Generic.HashSet<string>(new[] { "Number", "String" })
        };
    }
}
```

This example demonstrates how to configure a SettingsProvider with UIElements:

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;
using UnityEditor.UIElements;class MyCustomSettings : ScriptableObject
{
    const string AssetPath = "Assets/Editor/MyCustomSettings.asset";    [SerializeField] int m_Number = 42;
    [SerializeField] string m_SomeString = "The answer to the universe";    internal static MyCustomSettings GetOrCreate()
    {
        MyCustomSettings settings = AssetDatabase.LoadAssetAtPath<MyCustomSettings>(AssetPath);
        if (settings == null)
        {
            settings = CreateInstance<MyCustomSettings>();
            AssetDatabase.CreateAsset(settings, AssetPath);
            AssetDatabase.SaveAssets();
        }
        return settings;
    }    internal static SerializedObject GetSO() => new SerializedObject(GetOrCreate());
}static class MyCustomSettingsUIToolkit
{
    [SettingsProvider]
    public static SettingsProvider CreateProvider()
    {
        return new SettingsProvider("Project/My Custom Settings (UI)", SettingsScope.Project)
        {
            label = "My Custom (UI)",
            activateHandler = (_, root) =>
            {
                SerializedObject serializedObject = MyCustomSettings.GetSO();                VisualElement container = new VisualElement();
                container.style.flexDirection = FlexDirection.Column;                container.Add(new PropertyField(serializedObject.FindProperty("m_SomeString"), "My String"));
                container.Add(new PropertyField(serializedObject.FindProperty("m_Number"), "My Number"));                root.Add(container);
                root.Bind(serializedObject);                // Optional stylesheet:
                // StyleSheet styleSheet = AssetDatabase.LoadAssetAtPath<StyleSheet>("Assets/Editor/settings_ui.uss");
                // if (styleSheet != null) root.styleSheets.Add(styleSheet);
            },
            keywords = new System.Collections.Generic.HashSet<string>(new[] { "Number", "String" })
        };
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| activateHandler | Overrides SettingsProvider.OnActivate. |
| deactivateHandler | Overrides SettingsProvider.OnDeactivate. |
| footerBarGuiHandler | Overrides SettingsProvider.OnFooterBarGUI. |
| guiHandler | Overrides SettingsProvider.OnGUI. |
| hasSearchInterestHandler | Overrides SettingsProvider.HasSearchInterest. |
| inspectorUpdateHandler | Overrides SettingsProvider.OnInspectorUpdate. |
| keywords | Gets or sets the list of keywords to compare against what the user is searching for. When the user enters values in the search box on the Settings window, SettingsProvider.HasSearchInterest tries to match those keywords to this list. |
| label | Gets or sets the display name of the SettingsProvider as it appears in the Settings window. If not set, the Settings window uses last token of SettingsProvider.settingsPath instead. |
| scope | Gets the Scope of the SettingsProvider. The Scope determines whether the SettingsProvider appears in the Preferences window (SettingsScope.User) or the Settings window (SettingsScope.Project). |
| settingsPath | Gets Path used to place the SettingsProvider in the tree view of the Settings window. The path should be unique among all other settings paths and should use "/" as its separator. |
| titleBarGuiHandler | Overrides SettingsProvider.OnTitleBarGUI. |

### Constructors

| Constructor | Description |
| --- | --- |
| SettingsProvider | Creates a new SettingsProvider. |

### Public Methods

| Method | Description |
| --- | --- |
| HasSearchInterest | Checks whether the SettingsProvider should appear when the user types something in the Settings window search box. SettingsProvider tries to match the search terms (even partially) to any of the SettingsProvider.keywords. The search is case insensitive. |
| OnActivate | Use this function to implement a handler for when the user clicks on the Settings in the Settings window. You can fetch a settings Asset or set up UIElements UI from this function. |
| OnDeactivate | Use this function to implement a handler for when the user clicks on another setting or when the Settings window closes. |
| OnFooterBarGUI | Use this function to override drawing the footer for the SettingsProvider using IMGUI. |
| OnGUI | Use this function to draw the UI based on IMGUI. This assumes you haven't added any children to the rootElement passed to the OnActivate function. |
| OnInspectorUpdate | OnInspectorUpdate is called at 10 frames per second to give the inspector a chance to update. See EditorWindow.OnInspectorUpdate for more details. |
| OnTitleBarGUI | Use this function to override drawing the title for the SettingsProvider using IMGUI. This allows you to add custom UI (such as a toolbar button) next to the title. AssetSettingsProvider uses this mecanism to display the "add to preset" and the "help" buttons. |
| Repaint | Request the SettingsWindow for a repaint. |

### Protected Methods

| Method | Description |
| --- | --- |
| FocusLost | Allow a SettingsProvider to be notified when the SettingsWindow lose focus. |

### Static Methods

| Method | Description |
| --- | --- |
| GetSearchKeywordsFromGUIContentProperties | Extract search keywords from all public static memebers in a specific Type. |
| GetSearchKeywordsFromPath | Extract search keywords from the serialized properties of an Asset at a specific path. |
| GetSearchKeywordsFromSerializedObject | Extract search keywords from the serialized properties of a SerializedObject. |
