<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.ContainsVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | Shader used in the variant. |
| passId | PassIdentifier used in the variant. |
| keywords | LocalKeyword array of keywords used in the variant. |
| material | Material with the shader and enabled keywords used in the variant. |

### Returns

**bool** True if variant exists in collection, false otherwise.

### Description

Check if the specified ShaderVariant exists in the collection.

If only the `material` is provided, then this function will check for a shader variant using the set of Material.enabledKeywords combined with the global shader keywords that are **currently enabled** in the active context. Additional resources: AddVariant, RemoveVariant.
