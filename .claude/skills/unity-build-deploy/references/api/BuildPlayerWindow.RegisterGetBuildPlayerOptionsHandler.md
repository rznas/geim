<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPlayerWindow.RegisterGetBuildPlayerOptionsHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| func | Delegate System.Func that takes a BuildPlayerOptions parameter. The value passed into the delegate will represent default options. The return value will be passed to the default build player handler, or to a custom handler set with BuildPlayerWindow.RegisterBuildPlayerHandler. |

### Description

Register a delegate method to calculate BuildPlayerOptions that are passed to the build player handler. Registering a null value will restore default behavior, which is the equivalent of calling BuildPlayerWindow.DefaultBuildMethods.GetBuildPlayerOptions.

If this delegate is registered and used in conjunction with the default build player handler, be sure to set BuildPlayerOptions.scenes, BuildPlayerOptions.locationPathName, and BuildPlayerOptions.target before exiting for the build process to proceed correctly.
