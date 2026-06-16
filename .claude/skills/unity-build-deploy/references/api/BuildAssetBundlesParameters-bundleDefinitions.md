<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildAssetBundlesParameters-bundleDefinitions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Array defining the name and contents of each AssetBundle. (optional)

An array of AssetBundleBuild structs that define the names and contents of each AssetBundle, e.g. the "Build Map". When provided Unity builds only the AssetBundles as specified, and ignores any AssetBundle assignments that had been made in the Editor user interface. This approach makes it convenient to programmatically define AssetBundle contents or to perform builds with different content within the same project.

 This field can be left unassigned, e.g. null, in which case BuildPipeline.BuildAssetBundles uses the AssetBundle assignments made in the Editor to determine the AssetBundles and their contents. Those assignments are stored in the AssetDatabase and in the .meta files and can also be accessed programmatically, see AssetImporter.assetBundleName, AssetDatabase.GetAssetPathsFromAssetBundle and AssetDatabase.GetImplicitAssetBundleName.
