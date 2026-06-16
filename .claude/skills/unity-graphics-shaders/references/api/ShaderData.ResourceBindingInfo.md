<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderData.ResourceBindingInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides resource layout information about a shader resource binding.

### Properties

| Property | Description |
| --- | --- |
| Index | The index of the shader resource binding (Read Only). The exact value and meaning of this property is platform and graphics API specific. |
| Kind | The kind of shader resource of this shader resource binding. (Read Only) |
| Name | The name of the shader resource binding (Read Only). |
| SamplerIndex | The index of the sampler for this shader resource binding if it's a texture (Read Only). The exact value and meaning of this property is platform and graphics API specific. |
| Writable | True if the shader resource binding is a read-write resource, such as RWBuffer or RWTexture. (Read Only) |
