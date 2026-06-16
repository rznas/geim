<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.UnsafeGenericPool_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a static implementation of ObjectPool<T0>.

This is an alternative to GenericPool<T0> which has collection checks disabled. Some objects generate garbage when they are compared during the collection checks. This version does not perform any collection checks so no garbage will be generated. Note this is not thread-safe.

```csharp
using UnityEngine.Pool;public class UnsafeGenericPoolPoolExample
{
    class MyClass
    {
        public int someValue;
        public string someString;
    }    void GetPooled()
    {
        // Get an instance
        var instance = UnsafeGenericPool<MyClass>.Get();        // Return the instance
        UnsafeGenericPool<MyClass>.Release(instance);
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| Get | Get an instance from the pool. If the pool is empty then a new instance will be created. |
| Release | Returns the instance back to the pool. |
