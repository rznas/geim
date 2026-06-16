<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shaders.ShaderBuildSettings.ValidateKeywordDeclarationOverrides.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| overrides | The keyword declaration override array to validate. |
| msg | The error message if validation errors occur. |

### Returns

**bool** True if the keyword declaration override data is valid.

### Description

Validates the keyword declaration override data.

This method checks that the override array does not contain multiple entries with the same keyword set. It also runs data validation on each element individually.
