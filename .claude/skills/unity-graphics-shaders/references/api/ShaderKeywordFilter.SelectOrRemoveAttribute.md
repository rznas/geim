<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.SelectOrRemoveAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Either include or remove the specified shader keywords in the build, depending on the data field underneath.

Unity does the following in all `multi_compile` keyword sets:

- Includes only `keywordNames` if the data field under `SelectOrRemove` matches the value of `condition`.
- Removes `keywordNames` if the data field under `SelectOrRemove` does not match the value of `condition`.

```csharp
using UnityEditor.ShaderKeywordFilter;[SelectOrRemove(true, keywordNames: "FeatureA")]
bool hasFeatureA;
```

Additional resources: FilterAttribute.

### Constructors

| Constructor | Description |
| --- | --- |
| SelectOrRemoveAttribute | Either include or remove the specified shader keywords in the build, depending on the data field underneath. |

### Inherited Members
