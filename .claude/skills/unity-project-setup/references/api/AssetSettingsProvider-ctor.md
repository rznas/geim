<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetSettingsProvider-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settingsWindowPath | Path of the settings in the Settings window. Uses "/" as separator. The last token becomes the settings label if none is provided. |
| editorCreator | Functor creating an Editor able to modify the settings. |
| keywords | List of keywords to compare against what the user is searching for. When the user enters values in the search box on the Settings window, SettingsProvider.HasSearchInterest tries to match those keywords to this list. |
| settingsGetter | Functor creating or getting a settings object. |

### Description

Creates a new AssetSettingsProvider so you can wrap legacy settings (that is, settings that previously appeared in the Inspector).

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
    // Nothing to do. This uses the Generic Editor to display MyCustomSettings properties
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
