<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabase.CreateRecordKey.html
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

Additional resources: PropertyDatabaseRecordKey, PropertyDatabase.Store, PropertyDatabase.TryLoad and PropertyDatabase.Invalidate.

### Parameters

| Parameter | Description |
| --- | --- |
| documentId | A document identifier. |
| propertyHash | A property hash. |

### Returns

**PropertyDatabaseRecordKey** The record key.

### Description

Creates a record key from a document identifier and a property hash.

Additional resources: PropertyDatabaseRecordKey, PropertyDatabase.CreatePropertyHash, PropertyDatabase.Store, PropertyDatabase.TryLoad and PropertyDatabase.Invalidate.

### Parameters

| Parameter | Description |
| --- | --- |
| documentKey | A document key. |
| propertyPathHash | A property hash. |

### Returns

**PropertyDatabaseRecordKey** The record key.

### Description

Creates a record key from a document key and a property hash.

Additional resources: PropertyDatabaseRecordKey, PropertyDatabase.CreateDocumentKey, PropertyDatabase.CreatePropertyHash, PropertyDatabase.Store, PropertyDatabase.TryLoad and PropertyDatabase.Invalidate.

### Parameters

| Parameter | Description |
| --- | --- |
| propertyPath | A property path or name. |

### Returns

**PropertyDatabaseRecordKey** The record key.

### Description

Creates a record key from a property path.

The document identifier will be considered as null and the document key will be 0.

Additional resources: PropertyDatabaseRecordKey, PropertyDatabase.Store, PropertyDatabase.TryLoad and PropertyDatabase.Invalidate.

### Parameters

| Parameter | Description |
| --- | --- |
| propertyHash | A property hash. |

### Returns

**PropertyDatabaseRecordKey** The record key.

### Description

Creates a record key from a property hash.

The document identifier will be considered as null and the document key will be 0.

Additional resources: PropertyDatabaseRecordKey, PropertyDatabase.CreatePropertyHash, PropertyDatabase.Store, PropertyDatabase.TryLoad and PropertyDatabase.Invalidate.
