<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ISearchEngineBase.EndSession.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The search context. |

### Description

A function called at the end of a search session.

Depending on the type of engine (ISceneSearchEngine, IProjectSearchEngine, IObjectSelectorEngine), a search session ends at different times. For ISceneSearchEngine and IProjectSearchEngine, a search session ends when the query is cleared. 

For IObjectSelectorEngine, there are two possibilities:

1. The session ends when the selector is closed (see ISelectorEngine.SelectObject).
2. The session ends forcefully because another selector will be opened, in which case the current selector needs to be closed because the ObjectSelector API does not support concurrent selectors. See ObjectSelectorSearchEndSessionModes.CloseSelector for an example.

This function is not called again until the next search session ends.

Additional resources: ISearchEngineBase.BeginSession, ISearchEngineBase.BeginSearch, ISearchEngineBase.EndSearch.
