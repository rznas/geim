<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains a SearchItem that was retrieved from a query.

### Static Properties

| Property | Description |
| --- | --- |
| nil | Represents a null search result. |

### Properties

| Property | Description |
| --- | --- |
| id | ID of the document containing that result. |
| index | Index of the document containing that result. |
| score | Relavance score of the result. A lower score indicates it is a more relevant result. |
| valid | Checks if a search result is valid. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchResult | Creates a new SearchResult. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Compares Search Results using their index values. |
| Equals | Compare Search Result using their index values. |
| GetHashCode | Computes the hash code for this SearchResult from its index property. |
