<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/search-custom-indexers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create custom search indexers

To search for assets by properties that aren’t in the default index, use custom indexers. You can activate individual custom indexers for each project.

## Custom indexers included with the Editor

The Unity Editor includes several custom indexers by default to support common extended indexing scenarios. However, these indexers might not be relevant for all users. If you exclude them from the default index , it reduces indexing time and storage size for users who don’t need these additional properties.

## Create a custom indexer

Use `Search.CustomObjectIndexerAttribute` to create your own indexer.

### Custom indexer use cases

Examples of uses for a custom indexer:

- Generate properties from other properties. For example, compute and tag textures that are power of two.
- Implement your own tagging or labeling system.
- Search on hidden properties, like **shader** tags.
- Search properties that aren’t serialized, like JSON files.

### Custom indexer examples and notes

This section provides two custom indexer examples, and a notes section about the examples.

#### Custom indexer example: shader indexing

```csharp
using UnityEngine;
using UnityEditor.Search;

public static class ShaderIndexing
{
    const int version = 1;

    public static string[] kTagIds = new string [] 
    {
        "LIGHTMODE",
        "SHADOWCASTER",
        "SHADOWCOLLECTOR",

        "Vertex",
        "VertexLM",
        "VertexLMRGBM",
        "REQUIREOPTIONS",
        "FORCENOSHADOWCASTING",
        "IGNOREPROJECTOR",
        "SHADOWSUPPORT",
        "PASSFLAGS",
        "RenderType",
        "DisableBatching",
        "LodFading",
        "RenderPipeline",
        "Picking",
        "SceneSelectionPass",
    };

    [CustomObjectIndexer(typeof(Shader), version = version)]
    public static void IndexShaderTagProperties(CustomObjectIndexerTarget context, ObjectIndexer indexer)
    {
        if (!(context.target is Shader shader))
            return;

        foreach(var tagIdStr in kTagIds)
        {
            var tagId = new UnityEngine.Rendering.ShaderTagId(tagIdStr);
            var tagValue = shader.FindSubshaderTagValue(0, tagId);
            var tagPropertyName = $"sh_{tagIdStr.ToLower()}";
            if (!string.IsNullOrEmpty(tagValue.name))
            {
                indexer.IndexProperty<string, Shader>(context.documentIndex, $"{nameof(Shader)}_tag.{tagPropertyName}", tagValue.name, saveKeyword:false, exact:false);
            }
        }

    }
}
```

#### Custom indexer example: 2D textures

```csharp
using UnityEditor.Search;
using UnityEngine;

public static class TextureCustomIndexing
{
    const int version = 1;

    [CustomObjectIndexer(typeof(Texture2D))]
    static void IndexMobileFriendlyTexture(CustomObjectIndexerTarget target, ObjectIndexer indexer)
    {
        var texture = target.target as Texture2D;
        if (texture == null)
            return;

        bool isMobileFriendly = texture.width < 64 && texture.height < 64;

        indexer.IndexProperty<bool, Texture2D>(target.documentIndex, "texture2d.testismobilefriendly", isMobileFriendly.ToString(), saveKeyword: false, exact: false);
    }
}
```

#### Notes about the examples

The examples show:

- A `CustomObjectIndexer` with a type and a version.
- The indexing function is passed an `ObjectIndexer` that you can use to add properties or words to the index.
- Because the indexer uses `IndexProperty`, the value of the property is indexed to allow partial matching.
- You can search for a property with the following syntax:  Refer to Search Query Operators for more details.
  - `propertyname=exactpropertyvalue` Example: `shader_tag.rendertype=opaque`
  - `propertyname:partialpropertyvalue` Example: `shader_tag.rendertype:opaq` or `shader_tag.rendertype:opaque`
- To rebuild the index, change the version of `CustomObjectIndexer`.
- Use `IndexProperty<PropertyType, PropertyTypeOwner>` to ensure `testismobilefriendly` is available in the Query Builder. This is relevant only to the 2D texture example.
- To have a unique property name that doesn’t have clashes in Query Builder, prefix `propertyname` with something, such as `PrefixForThisType`.
- Use `saveKeyword: false` to ensure the index keyword list isn’t polluted with the keyword `VALUES`.
- Use `exact: false` to allow searching for inexact values.

## Activate and deactivate a custom indexer

To activate or deactivate custom indexers, refer to Search preferences reference.

## Additional resources

- CustomObjectIndexerAttribute
- Search preferences reference
