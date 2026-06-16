<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPlayerWindow.RegisterBuildPlayerHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| func | Delegate System.Action that takes a BuildPipeline.BuildPlayerOptions parameter. |

### Description

Register a delegate to intercept or override the build process executed with the "Build" and "Build and Run" buttons. Registering a null value will restore default behavior, which is the equivalent of calling BuildPlayerWindow.DefaultBuildMethods.BuildPlayer.
