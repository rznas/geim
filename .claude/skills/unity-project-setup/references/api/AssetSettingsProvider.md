<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetSettingsProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AssetSettingsProvider is a specialization of the SettingsProvider class that converts legacy settings to Unified Settings. Legacy settings include any settings that used the Inspector to modify themselves, such as the *.asset files under the ProjectSettings folder. Under the hood, AssetSettingsProvider creates an Editor for specific Assets and builds the UI for the Settings window by wrapping the Editor.OnInspectorGUI function.

Internally we use this class to wrap our existing settings.

```csharp
using UnityEditor;
using UnityEngine;// Create a new type of Settings Asset.
class MyCustomSettings : ScriptableObject
{
    public const string k_MyCustomSettingsPath = "Assets/Editor/MyCustomSettings.asset";    [SerializeField]
    private int m_Number;    [SerializeField]
    private string m_SomeString;    internal static SerializedObject GetSettings()
    {
        var settings = AssetDatabase.LoadAssetAtPath<MyCustomSettings>(k_MyCustomSettingsPath);
        if (settings == null)
        {
            settings = ScriptableObject.CreateInstance<MyCustomSettings>();
            settings.m_Number = 42;
            settings.m_SomeString = "The answer to the universe";
            AssetDatabase.CreateAsset(settings, k_MyCustomSettingsPath);
        }        return new SerializedObject(settings);
    }
}[CustomEditor(typeof(MyCustomSettings))]
class MyCustomSettingsEditor : Editor
{
    // Nothing to do, this uses the Generic Editor to display MyCustomSettings properties
}class AssetSettingsProviderRegister
{
    [SettingsProvider]
    public static SettingsProvider CreateFromFilePath()
    {
        // Create an AssetSettingsProvider from a file path:
        var provider = AssetSettingsProvider.CreateProviderFromAssetPath("Project/AssetSettings/FromFile", MyCustomSettings.k_MyCustomSettingsPath);        // Register keywords from the properties of MyCustomSettings
        provider.keywords = SettingsProvider.GetSearchKeywordsFromSerializedObject(new SerializedObject(AssetDatabase.LoadAllAssetsAtPath(MyCustomSettings.k_MyCustomSettingsPath)));
        return provider;
    }    [SettingsProvider]
    public static SettingsProvider CreateFromSettingsObject()
    {
        // Create an AssetSettingsProvider from a settings object (UnityEngine.Object):
        var settingsObj = AssetDatabase.LoadAssetAtPath<UnityEngine.Object>(MyCustomSettings.k_MyCustomSettingsPath);
        var provider = AssetSettingsProvider.CreateProviderFromObject("Project/AssetSettings/FromObject", settingsObj);        // Register keywords from the properties of MyCustomSettings
        provider.keywords = SettingsProvider.GetSearchKeywordsFromSerializedObject(new SerializedObject(settingsObj));
        return provider;
    }    [SettingsProvider]
    public static SettingsProvider CreateFromSettingsFromFunctor()
    {
        // Create an AssetSettingsProvider from a functor that must return a UnityEngine.Object:
        var provider = new AssetSettingsProvider("Project/AssetSettings/FromFunctor", () => Editor.CreateEditor(AssetDatabase.LoadAssetAtPath<UnityEngine.Object>(MyCustomSettings.k_MyCustomSettingsPath)));        // Register keywords from the properties of MyCustomSettings
        provider.keywords = SettingsProvider.GetSearchKeywordsFromSerializedObject(new SerializedObject(AssetDatabase.LoadAllAssetsAtPath(MyCustomSettings.k_MyCustomSettingsPath)));
        return provider;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| settingsEditor | Editor providing UI to modify the settings. |

### Constructors

| Constructor | Description |
| --- | --- |
| AssetSettingsProvider | Creates a new AssetSettingsProvider so you can wrap legacy settings (that is, settings that previously appeared in the Inspector). |

### Public Methods

| Method | Description |
| --- | --- |
| OnActivate | Overrides SettingsProvider.OnActivate for this AssetSettingsProvider. |
| OnDeactivate | Overrides SettingsProvider.OnDeactivate for this AssetSettingsProvider. |
| OnFooterBarGUI | Overrides SettingsProvider.OnFooterBarGUI for this AssetSettingsProvider. |
| OnGUI | Overrides SettingsProvider.OnGUI for this AssetSettingsProvider. |
| OnTitleBarGUI | Overrides SettingsProvider.OnTitleBarGUI for this AssetSettingsProvider. This draws the button bar that contains the "add to preset" and the "help" buttons. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateProviderFromAssetPath | Create an AssetSettingsProvider from an asset path. |
| CreateProviderFromObject | Create an AssetSettingsProvider from a settings object. |
| CreateProviderFromResourcePath | Create an AssetSettingsProvider from an asset resource path. |

### Inherited Members

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

### Public Methods

| Method | Description |
| --- | --- |
| HasSearchInterest | Checks whether the SettingsProvider should appear when the user types something in the Settings window search box. SettingsProvider tries to match the search terms (even partially) to any of the SettingsProvider.keywords. The search is case insensitive. |
| OnInspectorUpdate | OnInspectorUpdate is called at 10 frames per second to give the inspector a chance to update. See EditorWindow.OnInspectorUpdate for more details. |
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
