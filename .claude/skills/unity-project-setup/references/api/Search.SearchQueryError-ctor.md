<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchQueryError-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index where the error occurred. |
| length | Length of the block that was being parsed. |
| reason | The reason for the error. |
| context | The context in which this error was logged. |
| provider | Which search provider logged this error. |
| fromSearchQuery | Set to true if this error comes from parsing the searchQuery. This will correctly offset the index with respect to the raw text. |
| type | The type of query error. See SearchQueryErrorType. Defaults to SearchQueryErrorType.Error. |

### Description

Creates a new SearchQueryError.

### Parameters

| Parameter | Description |
| --- | --- |
| error | The original QueryError. |
| context | The context in which this error was logged. |
| provider | Which search provider logged this error. |
| fromSearchQuery | Set to true if this error comes from parsing the searchQuery. This will correctly offset the index with respect to the raw text. |

### Description

Creates a new SearchQueryError from an existing QueryError.
