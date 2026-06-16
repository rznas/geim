<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.GetPassKeywords.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| s | The shader the Pass belongs to. |
| passIdentifier | The identifier of a Pass within the given shader. |

### Returns

**LocalKeyword[]** Returns an array of LocalKeywords that are valid for the Pass you identify. If the PassIdentifier you use is invalid, this function returns an empty array and Unity displays an error in the Console window.

### Description

Gets the local shader keywords that are valid for a Pass within a particular shader.

Additional resources: Pass.

### Parameters

| Parameter | Description |
| --- | --- |
| s | The shader the Pass belongs to. |
| passIdentifier | The identifier of a Pass within the given shader. |
| shaderType | The shader stage of the given Pass. |

### Returns

**LocalKeyword[]** Returns an array of LocalKeywords that are valid for the given shader stage of the Pass you identify. If the PassIdentifier you use is invalid, this function returns an empty array and Unity displays an error in the Console window. If the shader stage doesn't exist in the pass, this function returns an empty array.

### Description

Gets the local shader keywords that are valid for a specified shader stage of a Pass within a particular shader.

Additional resources: Pass, ShaderType.
