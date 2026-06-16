<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.GenericPool_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a static implementation of ObjectPool<T0>.

The GenericPool has collection checks enabled that ensure that when an instance is released it is not already in the pool. Note this is not thread-safe. Additional resources: UnsafeGenericPool<T0>.

```csharp
using UnityEngine.Pool;public class GenericPoolExample
{
    class MyClass
    {
        public int someValue;
        public string someString;
    }    void GetPooled()
    {
        // Get an instance
        var instance = GenericPool<MyClass>.Get();        // Return the instance
        GenericPool<MyClass>.Release(instance);
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| Get | Get an instance from the pool. If the pool is empty then a new instance will be created. |
| Release | Returns the instance back to the pool. |
