<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.GetAllScenePaths.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Return all the names of Scenes in the AssetBundle.

The names are the project-relative path of each .unity file, unless a different name was specified at build time.

 An AssetBundle can store either Scenes or Assets, never a mix of the two. If the AssetBundle contains only Assets this returns an empty string array.

 Additional resources: AssetBundle.isStreamedSceneAssetBundle, SceneManager.LoadScene, AssetBundleBuild.addressableNames
