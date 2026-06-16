<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.ApplyRulesIfGraphicsAPIAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable or disable shader keyword filter attributes based on the graphics API.

If you use this attribute, Unity enables filter attributes if the current build target matches any of the `graphicsDeviceTypes`.

 The following example builds only variants including the `VulkanVariant` keyword if you build for the Vulkan graphics API.

```csharp
using UnityEditor.ShaderKeywordFilter;[ApplyRulesIfGraphicsAPI(GraphicsDeviceType.Vulkan)]
[SelectIf(true, keywordNames: "VulkanVariant")]
bool forceVulkanVariant;
```

Additional resources: FilterAttribute.

### Constructors

| Constructor | Description |
| --- | --- |
| ApplyRulesIfGraphicsAPIAttribute | Enable or disable shader keyword filter attributes based on the graphics API. |

### Inherited Members
