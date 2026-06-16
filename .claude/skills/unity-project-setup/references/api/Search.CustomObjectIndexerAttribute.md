<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.CustomObjectIndexerAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows a user to register a custom Indexing function for a specific type.

When you have special properties you would like to index for an asset or a Unity Object, Unity suggests Writing a custom indexer routine . The newly indexed words or properties will allow the user to search for them using the Search Query Language. The registered function must be of type: `static void MyCustomIndexer(CustomObjectIndexerTarget context, ObjectIndexer indexer);`

 See ObjectIndexer for the various methods you can invoke on `indexer`.

 The CustomObjectIndexerTarget `context` argument can be used to access additional information about what is about to be indexed.

```csharp
[CustomObjectIndexer(typeof(Material))]
internal static void MaterialShaderReferences(CustomObjectIndexerTarget context, ObjectIndexer indexer)
{
   var material = context.target as Material;
   if (material == null)
       return;   if (material.shader)
   {
       var fullShaderName = material.shader.name.ToLowerInvariant();
       var shortShaderName = System.IO.Path.GetFileNameWithoutExtension(fullShaderName);
       indexer.AddProperty("ref", shortShaderName, context.documentIndex);
       indexer.AddProperty("ref", fullShaderName, context.documentIndex);
   }
}
```

### Properties

| Property | Description |
| --- | --- |
| type | Each time an object of a specific type is indexed, the registered function is called. |
| version | Version of the custom indexer. Increment this number to have the indexer re-index the indexes. |

### Constructors

| Constructor | Description |
| --- | --- |
| CustomObjectIndexerAttribute | Register a new Indexing function bound to the specific type. |
