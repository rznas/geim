<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetNormalMapEncoding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| encoding | The desired normal map encoding. |
| buildTarget | The NamedBuildTarget (only Android, iOS and tvOS). |
| platform | The platform build target group whose normal map encoding you want to set. |

### Description

Sets the normal map encoding for the given build target.

The normal map encoding is configurable on Android, iOS and tvOS. On all other platforms it is ignored.

BuildTargetGroup is marked for deprecation in the future. Use NamedBuildTarget instead.
