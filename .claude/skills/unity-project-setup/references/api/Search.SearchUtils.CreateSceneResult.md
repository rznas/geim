<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchUtils.CreateSceneResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Search context used to yield this item. |
| sceneProvider | Source search provider. Can be the scene provider obtained with SearchService.GetProvider using the id "scene". |
| go | Scene game object instance to create the new search item. |

### Returns

**SearchItem** Scene search item that can be yielded by your custom provider.

### Description

Creates a search item compatible with the scene provider.
