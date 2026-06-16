<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.CollectionPool_2.Release.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| toRelease | The instance to return to the pool. |

### Description

Returns the instance back to the pool.

If the pool has collection checks enabled and the instance is already held by the pool then an exception will be thrown.
