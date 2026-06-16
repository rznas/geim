<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.PassHasKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| s | The shader the Pass belongs to. |
| passIdentifier | The identifier of a Pass within the given shader. |
| keyword | The local shader keyword to check. |

### Returns

**void** Returns true if the keyword is valid for the given Pass. Otherwise, returns false. If the PassIdentifier you use is invalid, this function returns false and Unity displays an error in the Console window.

### Description

Checks whether a local shader keyword is valid for a Pass within a particular shader.

Additional resources: Pass.

### Parameters

| Parameter | Description |
| --- | --- |
| s | The shader the Pass belongs to. |
| passIdentifier | The identifier of a Pass within the given shader. |
| keyword | The local shader keyword to check. |
| shaderType | The shader stage of the given pass. |

### Returns

**void** Returns true if the keyword is valid for the given shader stage of the Pass. Otherwise, returns false. If the PassIdentifier you use is invalid, this function returns false and Unity displays an error in the Console window.

### Description

Checks whether a local shader keyword is valid for a particular shader stage of a Pass within a particular shader.

Additional resources: Pass.

### Parameters

| Parameter | Description |
| --- | --- |
| s | The shader the Pass belongs to. |
| passIdentifier | The identifier of a Pass within the given shader. |
| keyword | The local shader keyword to check. |
| shaderType | The shader stage of the given pass. |
| shaderCompilerPlatform | The shader compiler platform to check against. |

### Returns

**void** Returns true if the keyword is valid for the given shader stage of the Pass for the given ShaderCompilerPlatform. Otherwise, returns false. If the PassIdentifier you use is invalid, this function returns false and Unity displays an error in the Console window.

### Description

Checks whether a local shader keyword is valid for a particular shader stage of a Pass within a particular shader for the given shader compiler platform.

Some shader compiler platforms combine several shader stages in one. This method overload ensures that correct data is returned for all shader compiler platforms.

Additional resources: Pass.
