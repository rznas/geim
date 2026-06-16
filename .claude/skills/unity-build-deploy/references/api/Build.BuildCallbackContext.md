<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.BuildCallbackContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get a BuildCallbackContext object from a IPreprocessBuildWithContext.OnPreprocessBuild or Build.IPreprocessBuildWithContext.OnPostprocessBuild callback.

### Properties

| Property | Description |
| --- | --- |
| IsContentOnlyBuild | Returns true if the build is a content only build type like an AssetBundle build. |
| IsPlayerBuild | Returns true if the build is a player build type. |
| Report | The build report associated with this build. |
