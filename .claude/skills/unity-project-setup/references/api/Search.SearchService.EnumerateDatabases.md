<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.EnumerateDatabases.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IEnumerable<ISearchDatabase>** Search database interfaces.

### Description

Enumerate search databases.

Most of the search databases are asset and scene indexes.

```csharp
static string EnsureDecalPropertyIndexing()
{
    var materialDb = SearchService.EnumerateDatabases().FirstOrDefault(IsIndexingMaterialProperties);
    if (materialDb != null)
        return materialDb.name;

    if (!EditorUtility.DisplayDialog("Create decal material index",
        "Your project does not contain an index with decal material properties." +
        "\n\n" +
        "Do you want to create one now?", "Yes", "No"))
        return null;

    var dbName = "Decals";
    SearchService.CreateIndex(dbName,
        IndexingOptions.Properties | IndexingOptions.Dependencies |
        IndexingOptions.Types | IndexingOptions.Keep,
        roots: null,
        includes: new string[] { ".mat" },
        excludes: null,
        (name, path, finished) =>
        {
            Debug.Log($"Material index {name} created at {path}");
            finished();
        });
    return dbName;
}

static bool IsIndexingMaterialProperties(ISearchDatabase db)
{
    if (string.Equals(db.name, "Materials", StringComparison.OrdinalIgnoreCase))
        return true;
    return (db.indexingOptions & IndexingOptions.Properties) == IndexingOptions.Properties
        && (db.includePatterns.Count == 0 || db.includePatterns.Contains(".mat"));
}
```
