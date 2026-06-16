<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderKeywordFilter.FilterAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| action | The filter action this attribute triggers. |
| precedence | The mode of precedence between this attribute and any attributes evaluated before this. |
| evaluationMode | The condition evaluation mode that's used to decide whether the condition is expected to match or not. |
| condition | The value that's being compared against the targeted data field. The comparison outcome determines the filter behavior. |
| fileName | The path of the file this attribute is in. Automatically filled by default. |
| lineNumber | The line number of this attribute. Automatically filled by default. |
| keywordNames | An array of shader keyword names this filter attribute affects. |

### Description

Tell the shader system which shader keywords to include in or exclude from the build, based on the data field underneath.
