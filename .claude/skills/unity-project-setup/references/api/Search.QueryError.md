<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryError.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A QueryError holds the definition of a query parsing error.

QueryErrors are obtained when parsing a query through the function QueryEngine.Parse. See QueryEngine for an example where we recover parsing errors when a query is invalid.

### Properties

| Property | Description |
| --- | --- |
| index | Index where the error happened. |
| length | Length of the block that was being parsed. |
| reason | Reason why the parsing failed. |

### Constructors

| Constructor | Description |
| --- | --- |
| QueryError | Construct a new QueryError. |
