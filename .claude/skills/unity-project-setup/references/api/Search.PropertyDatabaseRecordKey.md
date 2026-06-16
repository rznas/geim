<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabaseRecordKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The key of a record that is stored in the PropertyDatabase.

A key is a numerical value that represents a description of the property being stored in the PropertyDatabase. It is composed of two parts, the document key and the property key.

The document key represents what document owns the property, and the property key represents the property itself. For example, if you wish to store the size of a file, the file would be the document and the size would be the property. You can use any value for your documents, as long as it is consistent when storing multiple properties of a single document. You can also not use a document, in which case the document key will be 0.

We provide multiple helper functions to help create record keys, see PropertyDatabase.CreateRecordKey, PropertyDatabase.CreateDocumentKey and PropertyDatabase.CreatePropertyHash.

### Static Properties

| Property | Description |
| --- | --- |
| size | The size of the key, in bytes. |

### Properties

| Property | Description |
| --- | --- |
| documentKey | The key of the document owning the property. |
| propertyKey | The key of the property. |

### Constructors

| Constructor | Description |
| --- | --- |
| PropertyDatabaseRecordKey | Constructs a new record key. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Compares the record key to another record key. |
| Equals | Tests equality with another record key. |
| GetHashCode | Gets the hashcode of the key. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | The not equal operator. |
| operator < | The less than operator. |
| operator == | The equals operator. |
| operator > | The greater than operator. |
