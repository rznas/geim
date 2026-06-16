<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchProposition-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| category | Category text used to group propositions together in query builder mode. |
| label | Display text of the proposition. |
| replacement | Text used to auto-complete the query when selected. |
| help | Help text used to display additional information about the search proposition. |
| priority | Value used to sort the propositions among other search propositions when displaying choices to the user. |
| moveCursor | Indicates when the text cursor should be moved when auto-completing the query with the selected proposition. |
| icon | Icon used to display the proposition. |
| color | Color used in query builder mode to draw the block using a specific color. |
| data | User data that the user can retrieve later to determine the nature of the proposition. |
| type | Type of search proposition value. This information is used in the query builder mode. |

### Description

Create a new search proposition.

Used with SearchProvider.fetchPropositions.
