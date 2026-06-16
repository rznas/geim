<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ObjectIndexer.IndexNumber.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| documentIndex | Document where the indexed value was found. |
| name | Key used to retrieve the value. |
| number | Number value to store in the index. |

### Description

Adds a key-number value pair to the index. The key won't be added with variations.

The following example uses `IndexNumber` to index a number `testsize` property that can be searched using common number operators such as `>=`, i.e. `testsize>=4.2`.

```csharp
[CustomObjectIndexer(typeof(Collider), version = 3)]
static void IndexObjectSize(CustomObjectIndexerTarget target, ObjectIndexer indexer)
{
    var collider = target.target as Collider;
    if (collider == null)
        return;

    var totalSize = CustomSelectors.ComputeColliderSize(collider);
    indexer.IndexNumber(target.documentIndex, "collidersize", totalSize);
}
```
