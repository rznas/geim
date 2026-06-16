<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.AddNestedQueryAggregator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| token | Name of the aggregator used when typing the query. This name is converted to lowercase when parsing the query to speed up the process. |
| aggregator | Aggregator function. Takes the results of the nested query, and returns an aggregate that contains any number of items. |

### Description

Adds a new nested query aggregator. An aggregator is an operation that can be applied on a nested query to aggregate the results of the nested query according to certain criteria.

<typeparam name="TNestedQueryData">The type of data returned by the nested query.</typeparam>
