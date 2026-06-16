<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorBuildSettings.TryGetConfigObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name in string format of the config object reference to be fetched. |
| result | The config object reference where the returned object will be stored. This must be an object of type Object. |

### Returns

**bool** Returns true if the config object reference was found and the type matched the result parameter. Returns false if the entry is not found, the config object reference is `null`, or if the type requested does not match the type stored.

### Description

Retrieve a config object reference by name.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;public class MyConfigData : ScriptableObject
{
    public static MyConfigData GetDefault()
    {
        //name of config data object
        string stringName = "com.myproject.myconfigdata";
        //path to Config Object and asset name
        string stringPath = "Assets/myconfigdata.asset";
        //used to hold config data
        MyConfigData data = null;        //if a config data object exists with the same name, return its config data
        if (EditorBuildSettings.TryGetConfigObject<MyConfigData>(stringName, out data))
            return data;        //If the asset file already exists, store existing config data
        if (File.Exists(stringPath))
            data = AssetDatabase.LoadAssetAtPath<MyConfigData>(stringPath);
        //if no previous config data exists
        if (data == null)
        {
            //show save file dialog and return user selected path name
            stringPath = EditorUtility.SaveFilePanelInProject("New Config File", "myconfigdata", "asset", "Select Config File Asset", "Assets");
            //initialise config data object
            data = ScriptableObject.CreateInstance<MyConfigData>();
            //create new asset from data at specified path
            //asset MUST be saved with the AssetDatabase before adding to EditorBuildSettings
            AssetDatabase.CreateAsset(data, stringPath);
        }        //add the new or loaded config object to EditorBuildSettings
        EditorBuildSettings.AddConfigObject(stringName, data, false);        return data;
    }
}
```
