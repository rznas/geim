<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ObjectIndexer.IndexProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| documentIndex | Document where the indexed word was found. |
| name | Key used to retrieve the value. |
| value | Value to add to the index. |
| saveKeyword | Define if we store this key in the keyword registry of the index. |
| propertyName | Name of the property to use as the key to the index entry. |

### Description

Adds a property value to the index. A property is specified with a key and a string value.

The following example indexes a new boolean property named `testismobilefriendly` that will be used to search textures that match `testismobilefriendly=true` or `testismobilefriendly=false`.

```csharp
[CustomObjectIndexer(typeof(Texture2D))]
static void IndexMobileFriendlyTexture(CustomObjectIndexerTarget target, ObjectIndexer indexer)
{
    var texture = target.target as Texture2D;
    if (texture == null)
        return;

    bool isMobileFriendly = texture.width < 64 && texture.height < 64;

    // Important Notes:
    // Use IndexProperty<PropertyType, PropertyTypeOwner> to ensure testismobilefriendly is available in the QueryBuilder.
    // Prefix propertyname with something (ex: PropertyOwnerType) to have a unique property name that won't clash in the QueryBuilder
    // saveKeyword: false -> Ensure the index keyword list won't be polluted with the keyword VALUES.
    indexer.IndexProperty<bool, Texture2D>(target.documentIndex, "Texture2D.testismobilefriendly", isMobileFriendly.ToString(), saveKeyword: false);
}
```

See SearchIndexer.AddProperty for more information and examples about indexing properties.

### Parameters

| Parameter | Description |
| --- | --- |
| documentIndex | Document where the indexed word was found. |
| name | Key used to retrieve the value. |
| value | Value to add to the index. |
| saveKeyword | Define whether to store this key in the keyword registry of the index. |
| exact | If exact is true, store only the exact match of the value (not variations) in the index. |

### Description

Adds a property value to the index. A property is specified with a key and a string value.
