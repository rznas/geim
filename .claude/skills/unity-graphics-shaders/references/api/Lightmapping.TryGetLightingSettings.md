<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Lightmapping.TryGetLightingSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settings | See Lightmapping.lightingSettings. |

### Returns

**bool** Returns true if there is an object, and false if it isn't.

### Description

Fetches the Lighting Settings for the current Scene. Will return false if it is null.

Useful if you don't want an exception to be thrown if lightingSettings is null.
