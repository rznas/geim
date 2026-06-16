<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.CustomObjectIndexerAttribute-type.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Each time an object of a specific type is indexed, the registered function is called.

```csharp
[CustomObjectIndexer(typeof(Shader), version = 2)]
internal static void ShaderIndexing(CustomObjectIndexerTarget context, ObjectIndexer indexer)
{
    if (!(context.target is Shader shader) || !indexer.settings.options.properties)
        return;

    var ownerPropertyType = typeof(Shader);
    for (int i = 0, end = shader.GetPropertyCount(); i != end; ++i)
    {
        var label = shader.GetPropertyName(i);

        // Keep some property name patterns
        if (s_IgnorePropertyNameRx.IsMatch(label))
            continue;

        var name = label.ToLowerInvariant();
        if (name.Length > 0 && name[0] == '_')
            name = name.Substring(1);
        switch (shader.GetPropertyType(i))
        {
            case ShaderPropertyType.Color:
                var v = shader.GetPropertyDefaultVectorValue(i);
                IndexColor(name, new Color(v.x, v.y, v.z, v.w), indexer, context.documentIndex, label, ownerPropertyType);
                break;
            case ShaderPropertyType.Vector:
                v = shader.GetPropertyDefaultVectorValue(i);
                IndexVector(name, v, indexer, context.documentIndex, label, ownerPropertyType);
                break;
            case ShaderPropertyType.Float:
                indexer.IndexNumber(context.documentIndex, name, shader.GetPropertyDefaultFloatValue(i));
                break;
        }
    }
}
```
