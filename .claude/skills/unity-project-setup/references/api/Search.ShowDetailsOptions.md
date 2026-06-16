<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ShowDetailsOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines what details are shown in the preview inspector panel for the search view.

.

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

### Properties

| Property | Description |
| --- | --- |
| None | No options are defined. |
| Preview | Show a large preview. |
| Inspector | Show an embedded inspector for the selected object. |
| Actions | Shows selected item possible actions. |
| Description | Show an extended item description. |
| ListView | Indicates that this search provider wants to display its items in a list view if possible. |
| DefaultGroup | Indicates that the provider will always be displayed as a group (tab) even if the result set is empty. |
| InspectorWithoutHeader | Show an embedded inspector for the selected object. Won't show the editor header. |
| Default | Default set of options used when SearchProvider.showDetails is set to true. |
