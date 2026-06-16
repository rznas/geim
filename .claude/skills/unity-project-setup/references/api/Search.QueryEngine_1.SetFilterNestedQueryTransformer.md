<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.SetFilterNestedQueryTransformer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filterToken | The identifier of the filter. Typically what precedes the operator in a filter (for example, "id" in "id>=2"). |
| transformer | The transformer function. |

### Description

Sets a filter's nested query transformer function. This function takes the result of a nested query and extracts the necessary data to compare with the filter.

<typeparam name="TNestedQueryData">The type of data returned by the nested query.</typeparam> <typeparam name="TRhs">The type expected on the right-hand side of the filter.</typeparam>
