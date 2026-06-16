<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioImporter.SetOverrideSampleSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| platformGroup | The platform which will have the sample settings overridden.  See BuildTargetGroup for the complete list of options. |
| platform | The platform which will have the sample settings overridden.  See BuildTargetGroup for the complete list of options and type the desired platform enum name in the form of a string. |
| settings | The override settings for the given platform. |

### Returns

**bool** Returns true if the settings were successfully overriden. Some setting overrides are not possible for the given platform, in which case false is returned and the settings are not registered.

### Description

Sets the override sample settings for the given platform.

For certain target platforms, overriding the audio importer settings may be beneficial for performance or other reasons. This function enables the registration of override settings specific to a given platform.
