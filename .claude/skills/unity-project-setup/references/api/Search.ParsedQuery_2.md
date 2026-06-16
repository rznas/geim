<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ParsedQuery_2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods to define an operation that can be used to filter a data set.

<TData>: The filtered data type, <TPayload>: The payload type.

### Properties

| Property | Description |
| --- | --- |
| errors | A list of QueryErrors. |
| evaluationGraph | Query evaluation graph used to evaluate the query. |
| queryGraph | Query graph. This graph can be used to walk all the node of the query if you need to do a special type of evaluation. |
| text | The text that generated the query. |
| tokens | The list of tokens found in the query. |
| valid | Indicates if the query is valid or not. |

### Public Methods

| Method | Description |
| --- | --- |
| Apply | Applies the filtering on a payload. |
| GetNodeAtPosition | Get the query node located at the specified index position in the query. |
| Optimize | Optimizes the query by optimizing the underlying filtering graph. |
