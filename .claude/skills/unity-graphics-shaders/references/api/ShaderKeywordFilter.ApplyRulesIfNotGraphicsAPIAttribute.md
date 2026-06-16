<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.ApplyRulesIfNotGraphicsAPIAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable or disable shader keyword filter attributes based on the graphics API.

If you use this attribute, Unity enables filter attributes if the current build target doesn't match any of the `graphicsDeviceTypes`.

 The following example builds only variants including the `FeatureA` keyword if you build for non-OpenGL graphics APIs.

```csharp
using UnityEditor.ShaderKeywordFilter;[ApplyRulesIfNotGraphicsAPI(GraphicsDeviceType.OpenGLES3, GraphicsDeviceType.OpenGLCore)]
[SelectIf(true, keywordNames: "FeatureA")]
bool forceFeatureA;
```

### Constructors

| Constructor | Description |
| --- | --- |
| ApplyRulesIfNotGraphicsAPIAttribute | Enable or disable shader keyword filter attributes based on the graphics API. |

### Inherited Members
