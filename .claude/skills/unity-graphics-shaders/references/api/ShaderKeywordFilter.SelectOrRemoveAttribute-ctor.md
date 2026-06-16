<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.SelectOrRemoveAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| condition | Unity compares the data field to this value. The outcome determines the filter behavior. |
| overridePriority | Whether this filter attribute overrides filter attributes that are already active on the same keywords. The default is `false`. |
| filePath | The path of the file this attribute is in. Automatically filled by default. |
| lineNumber | The line number of this attribute. Automatically filled by default. |
| keywordNames | An array of shader keyword names the filter attribute will apply to. |

### Description

Either include or remove the specified shader keywords in the build, depending on the data field underneath.

Additional resources: FilterAttribute.
