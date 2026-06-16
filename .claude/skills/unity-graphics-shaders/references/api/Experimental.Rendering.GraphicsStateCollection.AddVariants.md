<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.AddVariants.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| material | Material with the shader and enabled keywords used in the variant. |
| subshaderIndex | The index of the subshader within the shader used in the variant. |

### Returns

**bool** True if at least one new variant was added, false otherwise.

### Description

Adds one or more new shader variants to the collection.

If `subshaderIndex` is not specified, then one ShaderVariant will attempt to be added for each shader pass in every SubShader of the `material` parameter's Shader. Otherwise, at most Shader.GetPassCountInSubshader number of variants will be added using the specified `subshaderIndex`.

 All generated shader variants will use the set of Material.enabledKeywords combined with the global shader keywords that are **currently enabled** in the active context. Additional resources: AddVariant, RemoveVariant, ContainsVariant.
