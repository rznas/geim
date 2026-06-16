<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.RemoveVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | Shader used in the variant. |
| passId | PassIdentifier used in the variant. |
| keywords | Array of keywords used in the variant. |
| material | Material with the shader and enabled keywords used in the variant. |

### Returns

**bool** True if successfully removed, false otherwise.

### Description

Remove ShaderVariant and associated graphics states from collection.

If only the `material` is provided, then this function will only remove a shader variant matching exactly the set of Material.enabledKeywords combined with the global shader keywords that are **currently enabled** in the active context. Additional resources: RemoveGraphicsStatesForVariant, ContainsVariant.
