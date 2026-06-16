<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IQueryHandler_2.Eval.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| element | A single object to be tested. |

### Returns

**bool** True if the object passes the query, false otherwise.

### Description

Implement this function to evaluate the query on a single element.

### Parameters

| Parameter | Description |
| --- | --- |
| payload | The input data of the query. |

### Returns

**IEnumerable<TData>** An enumerable of type TData.

### Description

Implement this function to evaluate the query on a payload.
