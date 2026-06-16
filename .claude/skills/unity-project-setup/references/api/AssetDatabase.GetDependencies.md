<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetDependencies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pathName | The path to the asset for which dependencies are required. |
| recursive | Controls whether this method recursively checks and returns all dependencies including indirect dependencies (when set to true), or whether it only returns direct dependencies (when set to false). |

### Returns

**string[]** The paths of all assets that the input depends on.

### Description

Returns an array of all the assets that are dependencies of the asset at the specified **pathName**.

**Note:** GetDependencies() gets the Assets that are referenced by other Assets. For example, a Scene could contain many GameObjects with a Material attached to them. In this case, GetDependencies() will return the path to the Material Assets, but not the GameObjects as those are not Assets on your disk.

If **recursive** is true, the list returned will also include the input path itself. Note that this function returns all assets that are referenced by the input asset; these references are not necessarily required during the build process.

### Parameters

| Parameter | Description |
| --- | --- |
| pathNames | The path to the assets for which dependencies are required. |
| recursive | Controls whether this method recursively checks and returns all dependencies including indirect dependencies (when set to true), or whether it only returns direct dependencies (when set to false). |

### Returns

**void** The paths of all assets that the input depends on.

### Description

Returns an array of the paths of assets that are dependencies of all the assets in the list of **pathName**s that you provide.

**Note:** GetDependencies() gets the Assets that are referenced by other Assets. For example, a Scene could contain many GameObjects with a Material attached to them. In this case, GetDependencies() will return the path to the Material Assets, but not the GameObjects as those are not Assets on your disk.

If **recursive** is true, the list returned will also include the input paths themselves. Note that this function returns all assets that are referenced by the input asset; these references are not necessarily required during the build process.

```csharp
using System.Text;
using UnityEditor;
using UnityEngine;public class GetDependenciesExample : MonoBehaviour
{
    [MenuItem("APIExamples/GetDependencies")]
    static void GetAllDependenciesForScenes()
    {
        var allScenes = AssetDatabase.FindAssets("t:Scene");
        string[] allPaths = new string[allScenes.Length];
        int curSceneIndex = 0;        foreach (var guid in allScenes)
        {
            var path = AssetDatabase.GUIDToAssetPath(guid);
            allPaths[curSceneIndex] = path;
            ++curSceneIndex;
        }        var dependencies = AssetDatabase.GetDependencies(allPaths);        StringBuilder dependenciesString = new StringBuilder();
        dependenciesString.AppendLine();        foreach (var curDependency in dependencies)
        {
            dependenciesString.Append(curDependency);
            dependenciesString.AppendLine();
        }        Debug.Log("All dependencies for Scenes in Project: " + dependenciesString);
    }
}
```
