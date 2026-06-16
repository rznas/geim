<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IPropertyDatabaseView.Invalidate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| recordKey | A record key. |

### Description

Invalidates a single property record so it is no longer retrievable.

```csharp
using (var view = propertyDatabase.GetView())
{
    // Store a property.
    var propertyRecordKey = view.CreateRecordKey("path/to/my/asset", "m_Color");
    view.Store(propertyRecordKey, new Color(1, 0, 1));

    // Invalidate the property.
    view.Invalidate(propertyRecordKey);

    // The invalidated property can no longer be retrieved.
    if (view.TryLoad(propertyRecordKey, out object propertyValue))
        Assert.Fail("TryLoad should have failed to retrieve the record.");
}
```

Additional resources: IPropertyDatabaseView.CreateRecordKey.

### Parameters

| Parameter | Description |
| --- | --- |
| documentId | A document identifier. |

### Description

Invalidates all the properties stored for an entire document.

```csharp
using (var view = propertyDatabase.GetView())
{
    // Store multiple properties of a document.
    var document = "path/to/my/asset";
    view.Store(document, "prop1", "value1");
    view.Store(document, "prop2", "value2");

    // Invalidate the entire document.
    view.Invalidate(document);

    // The invalidated document can no longer be retrieved.
    if (view.TryLoad(view.CreateDocumentKey(document), out IEnumerable<object> documentValues))
        Assert.Fail("TryLoad should have failed to retrieve the document values.");
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| documentKey | A document key. |

### Description

Invalidates all the properties stored for an entire document.

```csharp
using (var view = propertyDatabase.GetView())
{
    // Store multiple properties of a document.
    var documentKey = view.CreateDocumentKey("path/to/my/asset");
    view.Store(documentKey, view.CreatePropertyHash("prop1"), "value1");
    view.Store(documentKey, view.CreatePropertyHash("prop2"), "value2");

    // Invalidate the entire document by its key.
    view.Invalidate(documentKey);

    // The invalidated document can no longer be retrieved.
    if (view.TryLoad(documentKey, out IEnumerable<object> documentKeyValues))
        Assert.Fail("TryLoad should have failed to retrieve the document values.");
}
```

Additional resources: IPropertyDatabaseView.CreateDocumentKey.
