<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.ObjectPool_1.Release.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| element | The instance to return to the pool. |

### Description

Returns the instance back to the pool. If the pool has reached maximum size, the returned instance is destroyed.

Calls to `Release` invoke the delegate passed to the constructor as the `actionOnRelease` parameter. Any instance returned to a pool that's already full is destroyed and the `actionOnDestroy` delegate is invoked if one was provided to the constructor. The pool is considered full when the number of objects it contains is equal to the pool's maximum size, as defined by the value of the `maxSize` parameter passed to the constructor.

 If collection checks are enabled, then calling `Release` on an instance that is already in the pool throws an exception. Collection checks are enabled by passing `true` as the value of the `collectionCheck` argument to the constructor. Collection checks only run in the Editor and not in a Player build.

 Additional resources: ctor.
