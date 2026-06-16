<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The PropertyDatabase is a system that can store, in a thread-safe manner, properties of different kinds into a single file that we call a property database.

The idea of the PropertyDatabase is that most of the time, fetching a property value can be costly. Therefore, caching those values for reuse at a later time can save a lot of cycles. The cache is stored in a file, so it is not lost on a domain reload or when quitting Unity (not all types can be serialized in the file but they can still be stored in the PropertyDatabase, see PropertyDatabase.IsPersistedType). You can open multiple PropertyDatabases on different files, but you cannot open multiple PropertyDatabases on a single file. Doing so will result in an invalid PropertyDatabase (see valid). You can do concurrent operations on a single instance of a PropertyDatabase, but for performance reasons you should use a view (see PropertyDatabase.GetView and IPropertyDatabaseView).

There are three main operations that you can do with the PropertyDatabase: storing values, loading values and invalidating values. When storing values, the values are stored in an array, sorted by their keys (see PropertyDatabase.CreateRecordKey and PropertyDatabaseRecordKey. A key is a number representing a document and a property. You can store any values coming from anywhere in the PropertyDatabase, but the most common use case is to store properties of an asset or a game object. In these cases, the asset or game object would be the document, and the property is any property on that document you want to store. You can then load those values at a later time, either for a single property or an entire document.

```csharp
using System.Collections.Generic;
using NUnit.Framework;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_PropertyDatabase
{
    // Where the property database will be written.
    const string propertyDatabaseFilePath = "Temp/test_property_db";

    static PropertyDatabase propertyDatabase;

    static void InitializePropertyDatabase()
    {
        // Setup the property database. We configure it with automatic flushing so the file store
        // will be updated automatically after an update.
        propertyDatabase = new PropertyDatabase(propertyDatabaseFilePath, true);
    }

    static void ClearPropertyDatabase()
    {
        propertyDatabase.Clear();

        // Since we are done with the property database, we should dispose it
        // to clear all resources.
        propertyDatabase.Dispose();
    }

    static PropertyDatabaseRecordKey GetPropertyKey(int id)
    {
        return PropertyDatabase.CreateRecordKey((ulong)id / 100, PropertyDatabase.CreatePropertyHash((id % 100).ToString()));
    }

    static object LoadPropertyValue(int id)
    {
        var recordKey = GetPropertyKey(id);
        if (propertyDatabase.TryLoad(recordKey, out object value))
            return value;

        // Fetch the value with the time consuming operation and store it for future
        // accesses.
        value = id.ToString();
        propertyDatabase.Store(recordKey, value);
        return value;
    }

    [MenuItem("Examples/PropertyDatabase/Class")]
    public static void RunExample()
    {
        InitializePropertyDatabase();
        if (!propertyDatabase.valid)
        {
            Debug.LogFormat(LogType.Error, LogOption.NoStacktrace, null, $"PropertyDatabase \"{propertyDatabase.filePath}\" failed to open properly.");
            return;
        }

        var allValues = new Dictionary<int, object>();
        // Load the property values to do something with it.
        for (var i = 0; i < 1000; ++i)
        {
            var value = LoadPropertyValue(i);
            allValues.Add(i, value);
        }

        // Validate everything is in the database
        for (var i = 0; i < 1000; ++i)
        {
            var key = GetPropertyKey(i);
            if (!propertyDatabase.TryLoad(key, out object value))
                Assert.Fail("Record should be in the database.");
            Assert.AreEqual(i.ToString(), value);
        }

        ClearPropertyDatabase();
    }
}
```

If a property or an entire document change, you can invalidate the stored values with PropertyDatabase.Invalidate and PropertyDatabase.InvalidateMask.

### Properties

| Property | Description |
| --- | --- |
| autoFlush | Boolean indicating if the PropertyDatabase will update the backing file automatically or not. |
| filePath | The file on which this PropertyDatabase is opened. |
| valid | Boolean indicating if the PropertyDatabase is valid. |

### Constructors

| Constructor | Description |
| --- | --- |
| PropertyDatabase | Constructs a new instance of a PropertyDatabase. |

### Public Methods

| Method | Description |
| --- | --- |
| Clear | Clears the entire content of the PropertyDatabase. |
| Dispose | Dispose of the resources used by this PropertyDatabase. |
| Flush | Triggers a manual update of the backing file. |
| GetInfo | Returns a formatted string showing various information of the PropertyDatabase. |
| GetValueFromRecord | Deserialize a record value into its proper type. |
| GetView | Opens a view on the PropertyDatabase. |
| Invalidate | Invalidates a single property record so it is no longer retrievable. |
| InvalidateMask | Invalidate all properties stored from multiple documents that match a document key mask. |
| Store | Stores a document property. |
| TryLoad | Loads a single property, already deseriazed into an object. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateDocumentKey | Creates a document key from a document identifier. |
| CreatePropertyHash | Creates a property hash from a property path. |
| CreateRecordKey | Creates a record key from a document identifier and a property path. |
| IsPersistableType | Returns a boolean indicating if a type can be persisted into the backing file. |
