<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ISelectorEngine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The base interface for search engines that implement an object select operation.

In an object select operation, the search engine opens a window from which users can select from a list of items returned by a search query. The search engine is responsible for the windowing and the searching. ObjectSelector uses this type of search.

### Public Methods

| Method | Description |
| --- | --- |
| SelectObject | This function is called when a window must be opened to perform a search and select operation. |
| SetSearchFilter | This function is called when the initial search text for the object selector window is set. |
