<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetSettingsProvider.CreateProviderFromAssetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settingsWindowPath | Path of the settings in the Settings window. Uses "/" as separator. The last token becomes the settings label if none is provided. |
| assetPath | Path of the asset on disk. |
| keywords | List of keywords to compare against what the user is searching for. When the user enters values in the search box on the Settings window, SettingsProvider.HasSearchInterest tries to match those keywords to this list. |

### Returns

**AssetSettingsProvider** Returns an AssetSettingsProvider that will create an Editor for this particular asset.

### Description

Create an AssetSettingsProvider from an asset path.

```csharp
using UnityEngine;
using UnityEditor;class MyCustomSettings : ScriptableObject
{
    public const string k_MyCustomSettingsPath = "Assets/Editor/MyCustomSettings.asset";    [SerializeField]
    private int m_Number;    [SerializeField]
    private string m_SomeString;    internal static MyCustomSettings GetOrCreateSettings()
    {
        var settings = AssetDatabase.LoadAssetAtPath<MyCustomSettings>(k_MyCustomSettingsPath);
        if (settings == null)
        {
            settings = ScriptableObject.CreateInstance<MyCustomSettings>();
            settings.m_Number = 42;
            settings.m_SomeString = "The answer to the universe";
            AssetDatabase.CreateAsset(settings, k_MyCustomSettingsPath);
            AssetDatabase.SaveAssets();
        }
        return settings;
    }    internal static SerializedObject GetSerializedSettings()
    {
        return new SerializedObject(GetOrCreateSettings());
    }
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
        // Create an AssetSettingsProvider from a functor that must returns a UnityEngine.Object:
        var provider = new AssetSettingsProvider("Project/AssetSettings/FromFunctor", () => Editor.CreateEditor(AssetDatabase.LoadAssetAtPath<UnityEngine.Object>(MyCustomSettings.k_MyCustomSettingsPath)));        // Register keywords from the properties of MyCustomSettings
        provider.keywords = SettingsProvider.GetSearchKeywordsFromSerializedObject(new SerializedObject(AssetDatabase.LoadAllAssetsAtPath(MyCustomSettings.k_MyCustomSettingsPath)));
        return provider;
    }
}
```
