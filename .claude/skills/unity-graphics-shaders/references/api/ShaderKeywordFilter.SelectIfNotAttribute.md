<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.SelectIfNotAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Include only the specified shader keywords in the build if the data field doesn't match the condition.

If the data field under `SelectIf` doesn't match the value of `condition`, Unity includes only `keywordNames` in any `multi_compile` keyword set.

```csharp
using UnityEditor.ShaderKeywordFilter;[SelectIfNot(false, keywordNames: "FeatureA")]
bool forceFeatureA;
```

Additional resources: FilterAttribute.

### Constructors

| Constructor | Description |
| --- | --- |
| SelectIfNotAttribute | Include only the specified shader keywords in the build if the data field doesn't match the condition. |

### Inherited Members
