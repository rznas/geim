<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.DictionaryPool_2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A version of CollectionPool<T0,T1> for Dictionaries.

```csharp
using UnityEngine.Pool;public class Example
{
    void GetPooled()
    {
        // Get a pooled instance
        var instance = DictionaryPool<int, int>.Get();        // Use the Dictionary        // Return it back to the pool
        DictionaryPool<int, int>.Release(instance);
    }
}
```

### Inherited Members

### Static Methods

| Method | Description |
| --- | --- |
| Get | Get an instance from the pool. If the pool is empty then a new instance will be created. |
| Release | Returns the instance back to the pool. |
