<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EnterPlayModeOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines the flags for the Enter Play Mode Options in the Unity Editor.

### Properties

| Property | Description |
| --- | --- |
| None | This makes Unity reload the .NET Application Domain and entire Scene when entering Play Mode. |
| DisableDomainReload | When Domain Reload is disabled, scripts are not reloaded when entering Play Mode. This makes it quicker to switch to Play Mode, because there's no need to destroy, create and reload the .NET Application Domain. |
| DisableSceneReload | When Scene Reload is disabled, Unity resets the Scene state and emulates all of the required post-processor calls when entering Play Mode, instead of reloading the whole Scene. This makes it quicker to switch to Play Mode, because there's no need to destroy, create and awaken all the Scene objects, and serialize and deserialize the Scene from disk. |
