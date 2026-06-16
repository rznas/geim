<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

API for building players or AssetBundles.

The BuildPipeline class in the Unity Editor namespace provides essential tools to programmatically Build Players and Build AssetBundles. AssetBundles can be loaded from external sources such as the web, enhancing the flexibility and scalability of content delivery in Unity applications. The class contains several static properties and methods to facilitate building workflows.

Additional resources: AssetBundles, Build Player Pipeline

### Static Properties

| Property | Description |
| --- | --- |
| isBuildingPlayer | Returns true when Unity is actively building a Player or AssetBundles |

### Static Methods

| Method | Description |
| --- | --- |
| BuildAssetBundles | Builds the AssetBundles in your project. |
| BuildCanBeAppended | Checks if Unity can append the build. |
| BuildPlayer | Builds a player. |
| GetBuildTargetName | Given a BuildTarget will return the well known string representation for the build target platform. |
| GetCRCForAssetBundle | Extract the CRC checksum for the given AssetBundle. |
| GetHashForAssetBundle | Extract the hash for the given AssetBundle. |
| GetPlaybackEngineDirectory | Returns the path of a player directory. For ex., Editor\Data\PlaybackEngines\AndroidPlayer. |
| GetPlayerConnectionInitiateMode | Returns the mode currently used by players to initiate a connect to the host. |
| IsBuildTargetSupported | Returns true if the specified build target is currently available in the Editor. |
