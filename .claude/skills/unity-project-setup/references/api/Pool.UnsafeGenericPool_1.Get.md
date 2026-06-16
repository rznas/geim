<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.UnsafeGenericPool_1.Get.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T** A pooled object or a new instance if the pool is empty.

### Description

Get an instance from the pool. If the pool is empty then a new instance will be created.

### Parameters

| Parameter | Description |
| --- | --- |
| value | Out parameter that will contain a reference to an instance from the pool. |

### Returns

**PooledObject<T>** A PooledObject that will return the instance back to the pool when its Dispose method is called.

### Description

Returns a PooledObject that will automatically return the instance to the pool when it is disposed.
