<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ObjectIndexer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A specialized SearchIndexer which provides methods to index a Unity Object from custom indexers.

The ObjectIndexer can only be used in the context of a CustomObjectIndexerAttribute and therefore cannot be instanciated explicitly.

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

Note that you can use all of the SearchIndexer `Add*` indexing methods to add words, properties and numbers to the search index database. You can also use the following higher level functions (i.e. IndexWord, IndexNumber, IndexProperty, IndexWordComponents and IndexPropertyComponents) to index common Unity Object properties.

### Public Methods

| Method | Description |
| --- | --- |
| IndexNumber | Adds a key-number value pair to the index. The key won't be added with variations. |
| IndexProperty | Adds a property value to the index. A property is specified with a key and a string value. |
| IndexPropertyComponents | Indexes multiple variations of a property value. |
| IndexWord | Adds a new word coming from a specific document to the index. |
| IndexWordComponents | Splits a word into multiple variations. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| documentCount | Returns the number of documents in the index. |
| keywordCount | Returns the number keywords in the index. |
| minQueryLength | Minimal length of a query. By default it is 1 character. |
| minWordIndexationLength | Minimal indexed word size. Default is 2. |
| name | Name of the index. Generally this name is set by a user from SearchDatabase.Settings. |
| resolveDocumentHandler | Handler used to resolve a document ID to some other data string. |
| skipEntryHandler | Handler used to skip entries. |
| timestamp | Indicates when the search index was last modified. |

### Public Methods

| Method | Description |
| --- | --- |
| AddDocument | Adds a new document to be indexed. |
| AddNumber | Adds a key-number value pair to the index. The key won't be added with variations. |
| AddProperty | Adds a property value to the index. A property is specified with a key and a string value. The value will be stored with multiple variations. |
| AddWord | Adds a new word coming from a document to the index. The word is added with multiple variations allowing partial search. |
| Dispose | Dispose of the SearchIndexer. |
| Finish | Finalizes the current index, sorting and compiling of all the indexes. |
| GetDocument | Returns a search document by its index. |
| GetMetaInfo | Get metadata of a specific document. |
| IndexDocument | Function to override in a concrete SearchIndexer to index the content of a document. |
| IsReady | Indicates if the index is fully built, up to date, and ready for search. |
| Merge | Merge a search index content into the current index. |
| Search | Runs a search query in the index. |
| SetMetaInfo | Set arbiraty metadata on a specific document. |
| SkipEntry | Called when the index is built to see if a specified document needs to be indexed. See SearchIndexer.skipEntryHandler. |
| Start | Starts indexing entries. |
