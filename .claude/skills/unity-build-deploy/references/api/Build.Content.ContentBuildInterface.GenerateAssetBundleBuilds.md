<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ContentBuildInterface.GenerateAssetBundleBuilds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns an array of AssetBundleBuild structs that detail the current AssetBundle layout, as set through the Inspector and stored in the AssetDatabase.

This API does not generate a build, instead it is a convenient function to populate the build definition into the format expected by some signatures of BuildPipeline.BuildAssetBundles, or the Scriptable Build Pipeline.

 Additional resources: BuildPipeline.BuildAssetBundles, AssetDatabase.GetAllAssetBundleNames, AssetDatabase.GetAssetPathsFromAssetBundle.
