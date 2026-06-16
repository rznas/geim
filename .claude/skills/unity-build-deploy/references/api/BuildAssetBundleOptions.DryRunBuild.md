<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildAssetBundleOptions.DryRunBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Performs a simulated build of AssetBundles without actually creating the files.

This allows you to do a dry run build for the AssetBundles but not actually build them. With this option enabled, BuildPipeline.BuildAssetBundles still returns an AssetBundleManifest object which contains valid AssetBundle dependencies and hashes.

```csharp
//Create a folder (right click in the Assets folder and go to Create>Folder), and name it “Editor” if it doesn’t already exist
//Place this script in the Editor folder//This script creates a new Menu named “Build Asset” and new options within the menu named “Normal” and “Dry Run Build”. Click these menu items to build an AssetBundle into a folder.using UnityEngine;
using UnityEditor;public class Example
{
    //Creates a new menu (Build Asset Bundles) and item (Normal) in the Editor
    [MenuItem("Build Asset Bundles/Normal")]
    static void BuildABsNone()
    {
        //Build AssetBundles with no special options
        //They will be written in the custom folder ("MyAssetBuilds") which needs to exist prior to this call.
        BuildPipeline.BuildAssetBundles("Assets/MyAssetBuilds", BuildAssetBundleOptions.None, BuildTarget.StandaloneOSX);
    }    //Creates a new item (Dry Run Build) in the new Build Asset Bundles menu
    [MenuItem("Build Asset Bundles/Dry Run Build")]
    static void BuildABsDry()
    {
        //Build the AssetBundles in dry run build mode
        BuildPipeline.BuildAssetBundles("Assets/MyAssetBuilds", BuildAssetBundleOptions.DryRunBuild, BuildTarget.StandaloneOSX);
    }
}
```
