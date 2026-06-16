<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource.SetSpatializerFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Zero-based index of user-defined parameter to be set. |
| value | New value of the user-defined parameter. |

### Returns

**bool** True, if the parameter could be set.

### Description

Sets a user-defined parameter of a custom spatializer effect that is attached to an AudioSource.

Since this is for internal use in custom inspectors controlling custom spatializer effects implemented as native audio plugins, it is up to the spatializer to perform necessary clipping on the UI and native sides through the setparameter/getparameter callbacks of the native audio plugin.
