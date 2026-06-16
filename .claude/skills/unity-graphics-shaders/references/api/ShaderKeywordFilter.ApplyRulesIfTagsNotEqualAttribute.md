<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.ApplyRulesIfTagsNotEqualAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable or disable shader keyword filter attributes based on shader tags.

If you use this attribute, Unity enables filter attributes if the shader compilation context does not contain matching tags.

 The following example builds only variants including the `FeatureA` keyword, if the shader is not a Universal Render Pipeline (URP) shader.

```csharp
using UnityEditor.ShaderKeywordFilter;[ShaderKeywordFilter.ApplyRulesIfTagsNotEqual("RenderPipeline", "UniversalPipeline")]
[SelectIf(true, keywordNames: "FeatureA")]
bool forceFeatureA;
```

Additional resources: FilterAttribute.

### Constructors

| Constructor | Description |
| --- | --- |
| ApplyRulesIfTagsNotEqualAttribute | Enable or disable shader keyword filter attributes based on shader tags. |

### Inherited Members
