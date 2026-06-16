<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchItemProviderAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to declare a static method that will create a new search provider at load time.

```csharp
[SearchItemProvider]
internal static SearchProvider CreateProvider()
{
    return new SearchProvider(id, name)
    {
        filterId = "hex:",
        priority = 99999, // put example provider at a low priority
        showDetailsOptions = ShowDetailsOptions.Description | ShowDetailsOptions.Preview,
        fetchItems = (context, items, provider) =>
        {
            var expression = context.searchQuery;
            if (expression.Length == 6 && IsHex(expression))
            {
                expression = "#" + expression;
                items.Add(provider.CreateItem(context, expression, GetColorName(expression),
                    "Look at this " + GetColorName(expression) + " color!",
                    CreateTextureFromColor(expression, 64, 64), null));
            }
            return null;
        },
        fetchPreview = (item, context, size, options) =>
        {
            return CreateTextureFromColor(item.id, (int)size.x, (int)size.y);
        },
    };
}
```
