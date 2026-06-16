<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabase.Invalidate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| recordKey | A record key. |

### Description

Invalidates a single property record so it is no longer retrievable.

```csharp
// Store a property.
var propertyRecordKey = PropertyDatabase.CreateRecordKey("path/to/my/asset", "m_Color");
propertyDatabase.Store(propertyRecordKey, new Color(1, 0, 1));

// Invalidate the property.
propertyDatabase.Invalidate(propertyRecordKey);

// The invalidated property can no longer be retrieved.
if (propertyDatabase.TryLoad(propertyRecordKey, out object propertyValue))
    Assert.Fail("TryLoad should have failed to retrieve the record.");
```

Additional resources: PropertyDatabase.CreateRecordKey.

### Parameters

| Parameter | Description |
| --- | --- |
| documentId | A document identifier. |

### Description

Invalidates all the properties stored for an entire document.

```csharp
// Store multiple properties of a document.
var document = "path/to/my/asset";
propertyDatabase.Store(document, "prop1", "value1");
propertyDatabase.Store(document, "prop2", "value2");

// Invalidate the entire document.
propertyDatabase.Invalidate(document);

// The invalidated document can no longer be retrieved.
if (propertyDatabase.TryLoad(PropertyDatabase.CreateDocumentKey(document), out IEnumerable<object> documentValues))
    Assert.Fail("TryLoad should have failed to retrieve the document values.");
```

### Parameters

| Parameter | Description |
| --- | --- |
| documentKey | A document key. |

### Description

Invalidates all the properties stored for an entire document.

```csharp
// Store multiple properties of a document.
var documentKey = PropertyDatabase.CreateDocumentKey("path/to/my/asset");
propertyDatabase.Store(documentKey, PropertyDatabase.CreatePropertyHash("prop1"), "value1");
propertyDatabase.Store(documentKey, PropertyDatabase.CreatePropertyHash("prop2"), "value2");

// Invalidate the entire document by its key.
propertyDatabase.Invalidate(documentKey);

// The invalidated document can no longer be retrieved.
if (propertyDatabase.TryLoad(documentKey, out IEnumerable<object> documentKeyValues))
    Assert.Fail("TryLoad should have failed to retrieve the document values.");
```

Additional resources: PropertyDatabase.CreateDocumentKey.
