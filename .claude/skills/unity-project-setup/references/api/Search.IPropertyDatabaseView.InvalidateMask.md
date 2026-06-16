<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IPropertyDatabaseView.InvalidateMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| documentKeyMask | A document key mask. |

### Description

Invalidate all properties stored from multiple documents that match a document key mask.

This operation is slower than the simpler IPropertyDatabaseView.Invalidate since we cannot rely on a binary search to find all keys that match the mask.

```csharp
using (var view = propertyDatabase.GetView())
{
    // Store properties of multiple documents.
    for (ulong i = 0; i < 10; ++i)
    {
        for (var j = 0; j < 10; ++j)
            view.Store(i, view.CreatePropertyHash($"prop{j}"), $"value{j}");
    }

    // Invalidate all documents that match any set bits of the mask.
    ulong invalidatedDocumentMask = 2;
    view.InvalidateMask(invalidatedDocumentMask);

    // The invalidated documents can no longer be retrieved.
    for (ulong i = 0; i < 10; ++i)
    {
        if ((i & invalidatedDocumentMask) == 0)
            continue;
        if (view.TryLoad(i, out IEnumerable<object> invalidatedDocumentValues))
            Assert.Fail("TryLoad should have failed to retrieve the invalidated document values.");
    }
}
```

Additional resources: IPropertyDatabaseView.CreateDocumentKey.
