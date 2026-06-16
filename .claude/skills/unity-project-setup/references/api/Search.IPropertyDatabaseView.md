<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IPropertyDatabaseView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface of a PropertyDatabase view.

The idea of a PropertyDatabase view is similar to Windows' memory-mapped file views, although much simpler. Each PropertyDatabase view has its own filestream that can access the PropertyDatabase independently from other views. The views of a single PropertyDatabase are synchronized, so concurrent accesses are allowed. However, for concurrent accesses to work properly each thread must have its own instance of a view.

All operations available on the PropertyDatabase class are available on the view itself. When operating directly on the PropertyDatabase instance, an internal view is created to handle all the synchronization. Since we are dealing with files, opening a view has a non-negligible cost. Therefore, it is recommended to open a view once, and use it as long as possible before disposing it.

```csharp
using System.Collections.Generic;
using NUnit.Framework;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_IPropertyDatabaseView
{
    // Where the property database will be written.
    const string propertyDatabaseFilePath = "Temp/test_ipropertydatabaseview_db";

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
        propertyDatabase.Dispose();
    }

    static PropertyDatabaseRecordKey GetPropertyKey(int id, IPropertyDatabaseView view)
    {
        return view.CreateRecordKey((ulong)id / 100, view.CreatePropertyHash((id % 100).ToString()));
    }

    static object LoadPropertyValue(int id, IPropertyDatabaseView view)
    {
        var recordKey = GetPropertyKey(id, view);
        if (view.TryLoad(recordKey, out object value))
            return value;

        // Fetch the value with the time consuming operation and store it for future
        // accesses.
        value = id.ToString();
        view.Store(recordKey, value);
        return value;
    }

    [MenuItem("Examples/IPropertyDatabaseView/Interface")]
    public static void RunExample()
    {
        InitializePropertyDatabase();
        if (!propertyDatabase.valid)
        {
            Debug.LogFormat(LogType.Error, LogOption.NoStacktrace, null, $"PropertyDatabase \"{propertyDatabase.filePath}\" failed to open properly.");
            return;
        }

        // Doing a change on the property database internally opens a view on the actual data,
        // which is non negligible. Therefore, it is advised to open a view once and use it as much as you
        // can.
        // Note: when doing concurrent accesses to the property database, each thread must have its own
        // view instance.
        var allValues = new Dictionary<int, object>();
        using (var view = propertyDatabase.GetView())
        {
            for (var i = 0; i < 1000; ++i)
            {
                var value = LoadPropertyValue(i, view);
                allValues.Add(i, value);
            }
        }

        // Validate everything is in the database
        using (var view = propertyDatabase.GetView())
        {
            for (var i = 0; i < 1000; ++i)
            {
                var key = GetPropertyKey(i, view);
                if (!view.TryLoad(key, out object value))
                    Assert.Fail("Record should be in the database.");
                Assert.AreEqual(i.ToString(), value);
            }
        }

        ClearPropertyDatabase();
    }
}
```

Additional resources: PropertyDatabase.GetView

### Public Methods

| Method | Description |
| --- | --- |
| Clear | Clears the entire content of the PropertyDatabase. |
| CreateDocumentKey | Creates a document key from a document identifier. |
| CreatePropertyHash | Creates a property hash from a property path. |
| CreateRecordKey | Creates a record key from a document identifier and a property path. |
| EnumerateAll | Enumerates all records stored in the PropertyDatabase |
| GetValueFromRecord | Deserialize a record value into its proper type. |
| Invalidate | Invalidates a single property record so it is no longer retrievable. |
| InvalidateMask | Invalidate all properties stored from multiple documents that match a document key mask. |
| IsPersistableType | Returns a boolean indicating if a type can be persisted into the backing file. |
| Store | Stores a document property. |
| Sync | Synchronizes the views so they have access to the same content. |
| TryLoad | Loads a single property, already deseriazed into an object. |
