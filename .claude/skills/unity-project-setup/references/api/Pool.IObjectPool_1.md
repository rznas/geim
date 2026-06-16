<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.IObjectPool_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for ObjectPools.

Additional resources: ObjectPool<T0>, LinkedPool<T0>.

### Properties

| Property | Description |
| --- | --- |
| CountInactive | The total amount of items currently in the pool. |

### Public Methods

| Method | Description |
| --- | --- |
| Clear | Removes all pooled items. If the pool contains a destroy callback then it will be called for each item that is in the pool. |
| Get | Get an instance from the pool. If the pool is empty then a new instance will be created. |
| Release | Returns the instance back to the pool. |
