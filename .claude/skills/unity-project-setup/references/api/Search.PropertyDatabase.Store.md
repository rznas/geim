<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabase.Store.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| documentId | A document identifier. |
| propertyPath | A property path or name. |
| value | The value of the property. |

### Returns

**bool** True if the store operation succeeded, false if not.

### Description

Stores a document property.

```csharp
// Store a property of a document, like a property of an asset.
var stored = propertyDatabase.Store("path/to/my/asset", "m_Color", new Color(1, 0, 1));
if (!stored)
    Debug.LogWarning("Property m_Color did not store.");
```

### Parameters

| Parameter | Description |
| --- | --- |
| documentKey | A document key. |
| propertyHash | A property hash. |
| value | The value of the property. |

### Returns

**bool** True if the store operation succeeded, false if not.

### Description

Stores a document property with a precomputed document key and property hash.

```csharp
// Store a property of a document, with the document id and property hash already computed.
var documentId = PropertyDatabase.CreateDocumentKey("path/to/my/asset");
var propertyHash = PropertyDatabase.CreatePropertyHash("m_Size");
stored = propertyDatabase.Store(documentId, propertyHash, 42);
if (!stored)
    Debug.LogWarning("Property m_Size did not store.");
```

Additional resources: PropertyDatabase.CreateDocumentKey and PropertyDatabase.CreatePropertyHash.

### Parameters

| Parameter | Description |
| --- | --- |
| recordKey | A record key. |
| value | The value of the property. |

### Returns

**bool** True if the store operation succeeded, false if not.

### Description

Stores a document property with a precomputed record key.

```csharp
// Store a property with an already computed record key.
var recordKey = PropertyDatabase.CreateRecordKey("path/to/my/asset", "prop1");
stored = propertyDatabase.Store(recordKey, 123);
if (!stored)
    Debug.LogWarning("Property prop1 did not store.");
```

Additional resources: PropertyDatabase.CreateRecordKey.

### Parameters

| Parameter | Description |
| --- | --- |
| propertyHash | A property hash. |
| value | The value of the property. |

### Returns

**bool** True if the store operation succeeded, false if not.

### Description

Stores a property with a precomputed property hash.

The document identifier is considered null and the document key will be 0.

```csharp
// Store a property without any document.
stored = propertyDatabase.Store(PropertyDatabase.CreatePropertyHash("documentPrefix"), "myDocs_");
if (!stored)
    Debug.LogWarning("Property documentPrefix did not store.");
```

Additional resources: PropertyDatabase.CreatePropertyHash.
