<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.SelectIfAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Include only the specified shader keywords in the build if the data field matches the condition.

If the data field under `SelectIf` matches the value of `condition`, Unity includes only `keywordNames` in any `multi_compile` keyword set.

```csharp
using UnityEditor.ShaderKeywordFilter;[SelectIf(true, keywordNames: "FeatureA")]
bool forceFeatureA;
```

Additional resources: FilterAttribute.

### Constructors

| Constructor | Description |
| --- | --- |
| SelectIfAttribute | Include only the specified shader keywords in the build if the data field matches the condition. |

### Inherited Members
