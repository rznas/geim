<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.RemoveOrSelectAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Either remove or include the specified shader keywords in the build, depending on the data field underneath.

Unity does the following in all `multi_compile` keyword sets:

- Removes `keywordNames` if the data field under `RemoveOrSelect` matches the value of `condition`.
- Includes only `keywordNames` if the data field under `RemoveOrSelect` does not match the value of `condition`.

```csharp
using UnityEditor.ShaderKeywordFilter;[RemoveOrSelect(false, keywordNames: "FeatureA")]
bool hasFeatureA;
```

Additional resources: FilterAttribute.

### Constructors

| Constructor | Description |
| --- | --- |
| RemoveOrSelectAttribute | Either remove or include the specified shader keywords in the build, depending on the data field underneath. |

### Inherited Members
