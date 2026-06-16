<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorBuildSettings.AddConfigObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the object reference in string format. This string name must be unique within your project or the overwrite parameter must be set to true. |
| obj | Object reference to be stored. This object must be persisted and not `null`. |
| overwrite | Boolean parameter used to specify that you want to overwrite an entry with the same name if one already exists. |

### Returns

**void** Throws an exception if the object is `null`, not persisted, or if there is a name conflict and the overwrite parameter is set to false.

### Description

Store a reference to a config object by name.

The object must be an asset in the project, otherwise it will not be saved when the editor is restarted or scripts are reloaded. To avoid name conflicts with other packages, it is recommended that names are qualified by a namespace, i.e. "company.package.name".

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
