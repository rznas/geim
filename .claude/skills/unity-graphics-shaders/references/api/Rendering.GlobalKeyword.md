<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GlobalKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a global shader keyword.

Shader keywords determine which shader variants Unity uses. You can use a `GlobalKeyword` to enable, disable, or check the state of a **global** shader keyword. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

To set the state of a global shader keyword, use Shader.SetKeyword, Shader.EnableKeyword, or Shader.DisableKeyword. To get all the global shader keywords that exist, use Shader.globalKeywords. To get all the global shader keywords that are enabled, use Shader.enabledGlobalKeywords.

In addition to this, you can also enable or disable a local or global keyword with a `CommandBuffer`. To do this, use CommandBuffer.SetKeyword, CommandBuffer.EnableKeyword, or CommandBuffer.DisableKeyword.

Additional resources: Shader variants and keywords, LocalKeyword.

### Properties

| Property | Description |
| --- | --- |
| name | The name of the shader keyword. (Read Only) |

### Constructors

| Constructor | Description |
| --- | --- |
| GlobalKeyword | Creates and returns a GlobalKeyword struct that represents an existing global shader keyword. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Creates and returns a GlobalKeyword that represents a new or existing global shader keyword. |
