<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.RemoveIfNotAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Remove the specified shader keywords from the build if the data field doesn't match the condition.

If the data field under `RemoveIf` doesn't match the value of `condition`, Unity removes `keywordNames` in any `multi_compile` keyword set.

```csharp
using UnityEditor.ShaderKeywordFilter;[RemoveIfNot(true, keywordNames: "FeatureA")]
bool enableFeatureA;
```

Additional resources: FilterAttribute.

### Constructors

| Constructor | Description |
| --- | --- |
| RemoveIfNotAttribute | Remove the specified shader keywords from the build if the data field doesn't match the condition. |

### Inherited Members
