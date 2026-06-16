<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LocalKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a shader keyword declared in a shader source file.

Shader keywords determine which shader variants Unity uses. You can use a `LocalKeyword` to enable, disable, or check the state of a **local** shader keyword. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

When you declare a shader keyword in the source file for a Shader, ComputeShader or RayTracingShader, Unity represents the keyword with a `LocalKeyword` and stores it in a LocalKeywordSpace.

For a Shader:

- To set the state of a local shader keyword, use Material.SetKeyword, Material.EnableKeyword, or Material.DisableKeyword.
- To check the state of a local shader keyword, use Material.IsKeywordEnabled or Material.enabledKeywords.
- To access the `LocalKeywordSpace`, use Material.shader to access the Shader that the material uses, and then use Shader.keywordSpace.

For a ComputeShader:

- To set the state of a local shader keyword, use ComputeShader.SetKeyword, ComputeShader.EnableKeyword, or ComputeShader.DisableKeyword.
- To check the state of a local shader keyword, use ComputeShader.IsKeywordEnabled or ComputeShader.enabledKeywords.
- To access the `LocalKeywordSpace`, use ComputeShader.keywordSpace.

For a RayTracingShader:

- To set the state of a local shader keyword, use RayTracingShader.SetKeyword, RayTracingShader.EnableKeyword, or RayTracingShader.DisableKeyword.
- To check the state of a local shader keyword, use RayTracingShader.IsKeywordEnabled or RayTracingShader.enabledKeywords.
- To access the `LocalKeywordSpace`, use RayTracingShader.keywordSpace.

In addition to this, you can also enable or disable a local or global keyword with a `CommandBuffer`. To do this, use CommandBuffer.SetKeyword, CommandBuffer.EnableKeyword, or CommandBuffer.DisableKeyword.

**Note:** A `LocalKeyword` is specific to a single Shader, ComputeShader or RayTracingShader instance. You cannot use it with other Shader, ComputeShader or RayTracingShader instances, even if they declare keywords with the same `name`.

Additional resources: Shader variants and keywords, GlobalKeyword.

### Properties

| Property | Description |
| --- | --- |
| isDynamic | Specifies whether this local shader keyword is used for dynamic branching (Read Only). |
| isOverridable | Whether this local shader keyword can be overridden by a global shader keyword. (Read Only). |
| isValid | Specifies whether this local shader keyword is valid (Read Only). |
| name | The name of the shader keyword (Read Only). |
| type | The type of the shader keyword (Read Only). |

### Constructors

| Constructor | Description |
| --- | --- |
| LocalKeyword | Initializes and returns a LocalKeyword struct that represents an existing local shader keyword for a given Shader. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Returns true if the shader keywords are not the same. Otherwise, returns false. |
| operator == | Returns true if the shader keywords are the same. Otherwise, returns false. |
