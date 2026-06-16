<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.SetNestedQueryHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handler | The function that handles nested queries. It receives the nested query and the filter token on which the query is applied, and returns an IEnumerable. |

### Description

Sets the function that will handle nested queries. Only one handler can be set.

<typeparam name="TNestedQueryData">The type of data returned by the nested query.</typeparam>
