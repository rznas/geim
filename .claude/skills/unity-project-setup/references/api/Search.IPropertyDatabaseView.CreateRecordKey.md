<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IPropertyDatabaseView.CreateRecordKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| documentId | A document identifier. |
| propertyPath | A property path or name. |

### Returns

**PropertyDatabaseRecordKey** The record key.

### Description

Creates a record key from a document identifier and a property path.

Additional resources: PropertyDatabaseRecordKey, IPropertyDatabaseView.Store, IPropertyDatabaseView.TryLoad and IPropertyDatabaseView.Invalidate.

### Parameters

| Parameter | Description |
| --- | --- |
| documentId | A document identifier. |
| propertyHash | A property hash. |

### Returns

**PropertyDatabaseRecordKey** The record key.

### Description

Creates a record key from a document identifier and a property hash.

Additional resources: PropertyDatabaseRecordKey, IPropertyDatabaseView.CreatePropertyHash, IPropertyDatabaseView.Store, IPropertyDatabaseView.TryLoad and IPropertyDatabaseView.Invalidate.

### Parameters

| Parameter | Description |
| --- | --- |
| documentKey | A document key. |
| propertyPathHash | A property hash. |

### Returns

**PropertyDatabaseRecordKey** The record key.

### Description

Creates a record key from a document key and a property hash.

Additional resources: PropertyDatabaseRecordKey, IPropertyDatabaseView.CreateDocumentKey, IPropertyDatabaseView.CreatePropertyHash, IPropertyDatabaseView.Store, IPropertyDatabaseView.TryLoad and IPropertyDatabaseView.Invalidate.

### Parameters

| Parameter | Description |
| --- | --- |
| propertyPath | A property path or name. |

### Returns

**PropertyDatabaseRecordKey** The record key.

### Description

Creates a record key from a property path.

The document identifier will be considered as null and the document key will be 0.

Additional resources: PropertyDatabaseRecordKey, IPropertyDatabaseView.Store, IPropertyDatabaseView.TryLoad and IPropertyDatabaseView.Invalidate.

### Parameters

| Parameter | Description |
| --- | --- |
| propertyHash | A property hash. |

### Returns

**PropertyDatabaseRecordKey** The record key.

### Description

Creates a record key from a property hash.

The document identifier will be considered as null and the document key will be 0.

Additional resources: PropertyDatabaseRecordKey, IPropertyDatabaseView.CreatePropertyHash, IPropertyDatabaseView.Store, IPropertyDatabaseView.TryLoad and IPropertyDatabaseView.Invalidate.
