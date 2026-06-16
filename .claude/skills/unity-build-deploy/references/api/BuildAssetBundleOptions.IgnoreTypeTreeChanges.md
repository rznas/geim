<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildAssetBundleOptions.IgnoreTypeTreeChanges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ignore the type tree changes when doing the incremental build check.

This allows you to ignore the type tree changes when doing the incremental build check. With this flag set, if the included assets haven't change but type trees have changed, the target assetBundle will not be rebuilt.

```csharp
//Create a folder (right click in the Assets folder and go to Create>Folder), and name it “Editor” if it doesn’t already exist
//Place this script in the Editor folder//This script creates a new Menu named “Build Asset” and new options within the menu named “Normal” and “Ignore Type Tree Changes”. Click these menu items to build an AssetBundle into a folder with different options.using UnityEngine;
using UnityEditor;public class Example
{
    //Creates a new menu (Build Asset Bundles) and item (Normal) in the Editor
    [MenuItem("Build Asset Bundles/Normal")]
    static void BuildABsNone()
    {
        //Build AssetBundles with no special options
        //They will be written in the custom folder ("MyAssetBuilds") which needs to exist prior to this call.
        BuildPipeline.BuildAssetBundles("Assets/MyAssetBuilds", BuildAssetBundleOptions.None, BuildTarget.StandaloneOSX);
    }    //Creates a new item (Ignore Type Tree Changes) in the new Build Asset Bundles menu
    [MenuItem("Build Asset Bundles/Ignore Type Tree Changes")]
    static void BuildABsDry()
    {
        //Build the AssetBundles in ignore type tree changes build mode
        BuildPipeline.BuildAssetBundles("Assets/MyAssetBuilds", BuildAssetBundleOptions.IgnoreTypeTreeChanges, BuildTarget.StandaloneOSX);
    }
}
```
