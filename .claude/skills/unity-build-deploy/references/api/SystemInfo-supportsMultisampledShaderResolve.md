<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-supportsMultisampledShaderResolve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Boolean that indicates whether the final sub pass of a multi-sampled native render pass can write to a single-sampled output attachment.

Returns `true` if the final sub pass can write to a single-sampled output attachment. Otherwise returns `false`.

On platforms supporting multi-sampled shader resolve, the final sub pass of a render pass can be used to handle the resolve operation inside a shader, allowing extra processing on the resolved image without having to write to system memory first.

If this property is `true`, the final sub pass doesn't have the usual restriction that native render pass attachments must have the same MSAA samples.
