<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cache.ClearCache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| expiration | The number of seconds that AssetBundles may remain unused in the cache. |

### Returns

**bool** Returns True when cache clearing succeeded.

### Description

Removes all cached content in the cache that has been cached by the current application.

Returns false if any cached bundle is in use.
