<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.GetDefaultScriptingBackend.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The NamedBuildTarget. |

### Returns

**ScriptingImplementation** A ScriptingImplementation object that describes the default scripting backend for the build target you select.

### Description

Returns the default ScriptingImplementation for the build target you select.

### Parameters

| Parameter | Description |
| --- | --- |
| targetGroup | The platform group to retrieve the scripting backend for. |

### Returns

**ScriptingImplementation** A ScriptingImplementation object that describes the default scripting backend used on that build target.

### Description

BuildTargetGroup is marked for deprecation in the future. Use NamedBuildTarget instead.
