<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildAssetBundleOptions.StrictMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Fails the build if any errors are reported during it.

Without this flag, non-fatal errors - such as a failure to compile a shader for a particular platform - will not cause the build to fail, but may result in incorrect behaviour at runtime.

```csharp
//Create a folder (right click in the Assets folder and go to Create>Folder), and name it “Editor” if it doesn’t already exist
//Place this script in the Editor folder//This script creates a new Menu named “Build Asset” and new options within the menu named “Normal” and “Strict Mode”. Click these menu items to build an AssetBundle into a folder with either no extra build options, or a strict build.using UnityEngine;
using UnityEditor;public class Example
{
    //Creates a new menu (Build Asset Bundles) and item (Normal) in the Editor
    [MenuItem("Build Asset Bundles/Normal")]
    static void BuildABsNone()
    {
        //Build AssetBundles with no special options
        //They will be written in the custom folder ("MyAssetBuilds") which needs to exist prior to this call.
        BuildPipeline.BuildAssetBundles("Assets/MyAssetBuilds", BuildAssetBundleOptions.None, BuildTarget.StandaloneOSX);
    }    //Creates a new item (Strict Mode) in the new Build Asset Bundles menu
    [MenuItem("Build Asset Bundles/Strict Mode")]
    static void BuildABsStrict()
    {
        //Build the AssetBundles in strict mode (build fails if any errors are detected)
        BuildPipeline.BuildAssetBundles("Assets/MyAssetBuilds", BuildAssetBundleOptions.StrictMode, BuildTarget.StandaloneOSX);
    }
}
```
