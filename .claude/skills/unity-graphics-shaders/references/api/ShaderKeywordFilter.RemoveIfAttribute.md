<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.RemoveIfAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Remove the specified shader keywords from the build if the data field matches the condition.

If the data field under `RemoveIf` matches the value of `condition`, Unity removes `keywordNames` in any `multi_compile` keyword set.

```csharp
using UnityEditor.ShaderKeywordFilter;[RemoveIf(false, keywordNames: "FeatureA")]
bool enableFeatureA;
```

Additional resources: FilterAttribute.

### Constructors

| Constructor | Description |
| --- | --- |
| RemoveIfAttribute | Remove the specified shader keywords from the build if the data field matches the condition. |

### Inherited Members
