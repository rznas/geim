<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UQueryState_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Query object containing all the selection rules. The object can be saved and rerun later without re-allocating memory.

### Public Methods

| Method | Description |
| --- | --- |
| AtIndex | Selects the nth element matching all the criteria, or null if not enough elements were found. |
| First | The first element matching all the criteria, or null if none was found. |
| ForEach | Invokes function on all elements matching the query. |
| GetEnumerator | Allows traversing the results of the query with foreach without creating GC allocations. |
| Last | The last element matching all the criteria, or null if none was found. |
| RebuildOn | Creates a new QueryState with the same selection rules, applied on another VisualElement. |
| ToList | Adds all elements satisfying selection rules to the list. |
