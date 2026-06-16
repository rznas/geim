<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPipeline-isBuildingPlayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true when Unity is actively building a Player or AssetBundles

This returns true during Player builds (BuildPipeline.BuildPlayer) and AssetBundle builds (BuildPipeline.BuildAssetBundles). It can be used to check the context inside script code that could be triggered during a build, for example when ExecuteAlways is being used on a MonoBehaviour.
