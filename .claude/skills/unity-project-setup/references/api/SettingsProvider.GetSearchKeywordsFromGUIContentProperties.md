<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProvider.GetSearchKeywordsFromGUIContentProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IEnumerable<string>** Returns the list of keywords extracted from the static GUIContent.

### Description

Extract search keywords from all public static memebers in a specific Type.

```csharp
using UnityEngine;
using UnityEditor;// Create a new type of Settings asset.
class MyCustomSettings : ScriptableObject
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
        var provider = AssetSettingsProvider.CreateProviderFromAssetPath("Project/AssetSettings/FromFile", MyCustomSettings.k_MyCustomSettingsPath);        // Register keywords from the properties of the serialized object at a specific path
        provider.keywords = SettingsProvider.GetSearchKeywordsFromPath(MyCustomSettings.k_MyCustomSettingsPath);
        return provider;
    }    [SettingsProvider]
    public static SettingsProvider CreateFromSettingsObject()
    {
        // Create an AssetSettingsProvider from a settings object (UnityEngine.Object):
        var settingsObj = AssetDatabase.LoadAssetAtPath<UnityEngine.Object>(MyCustomSettings.k_MyCustomSettingsPath);
        var provider = AssetSettingsProvider.CreateProviderFromObject("Project/AssetSettings/FromObject", settingsObj);        // Register keywords from the properties of settingsObj
        provider.keywords = SettingsProvider.GetSearchKeywordsFromSerializedObject(new SerializedObject(settingsObj));
        return provider;
    }    class Styles
    {
        public static GUIContent number = new GUIContent("My Number");
        public static GUIContent someString = new GUIContent("Some string");
    }    [SettingsProvider]
    public static SettingsProvider CreateFromSettingsFromFunctor()
    {
        // Create an AssetSettingsProvider from a functor that must returns a UnityEngine.Object:
        var provider = new AssetSettingsProvider("Project/AssetSettings/FromFunctor", () => UnityEditor.Editor.CreateEditor(AssetDatabase.LoadAssetAtPath<UnityEngine.Object>(MyCustomSettings.k_MyCustomSettingsPath)));        // Register keywords from the static GUIContent in Styles class
        provider.keywords = SettingsProvider.GetSearchKeywordsFromGUIContentProperties<Styles>();
        return provider;
    }
}
```
