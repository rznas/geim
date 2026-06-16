<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextGenerator.PopulateWithErrors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| str | String to generate. |
| settings | Generation settings. |
| context | The object used as context of the error log message, if necessary. |

### Returns

**bool** True if the generation is a success, false otherwise.

### Description

Will generate the vertices and other data for the given string with the given settings.

Will only regenerate if the string AND settings are different from the last execution.
