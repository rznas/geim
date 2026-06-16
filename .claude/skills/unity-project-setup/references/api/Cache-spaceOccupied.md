<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cache-spaceOccupied.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the used disk space in bytes.

Initially this is 0. As you download AssetBundles to the cache, this will increase. If insufficient space is available in the cache to store a requested AssetBundle, the least-recently-used cached AssetBundles in the cache will be iteratively removed until enough space is available for the new AssetBundle.
