<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search items are returned by the search provider to show to the user after a search is performed. The search item holds all the data that is used to sort and present the search results. Some members of a SearchItem can be specified in an asynchronous callback (see SearchItem.fetchThumbnail, SearchItem.fetchDescription, etc).

SearchItems are generally created using the SearchProvider.CreateItem function. This example shows how to create a SearchItem with all the members.

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

### Static Properties

| Property | Description |
| --- | --- |
| clear | A search item representing none, usually used to clear the selection. |

### Properties

| Property | Description |
| --- | --- |
| context | Context used to create that item. |
| data | Search provider defined content. It can be used to transport any data to custom search provider handlers (i.e. `fetchDescription`). |
| description | If no description is provided, SearchProvider.fetchDescription will be called when the item is first displayed. |
| id | Unique ID of the search item for the search provider. |
| label | Display name of the search item. |
| options | Flags that dictate how the search item is displayed and used. |
| preview | Large preview of the search item. Usually cached by fetchPreview. |
| provider | Back pointer to the search provider. |
| score | The item relevance score will affect how the item gets sorted by the search provider. Lower scored items have more relevance and are prioritzed. |
| this[string] | Operator used to get an item field value. |
| thumbnail | If no thumbnail is provided, SearchProvider.fetchThumbnail is called when the item is first displayed. |
| value | Value set by the search expression system when selecting fields. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchItem | Construct a search item. A search item needs to have at least a unique ID for a given search query. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Check if two SearchItems have the same ID. |
| Equals | Check if two SearchItems have the same ID. |
| GetDescription | Fetch and format description. |
| GetFieldCount | Returns the amount of field stored in the search item. |
| GetFieldNames | Returns a list of all field names. |
| GetFields | Enumerate all search items fields. |
| GetHashCode | Default Hash of a SearchItem. |
| GetLabel | Fetch and format label. |
| GetPreview | Gets the search item preview if available, otherwise the preview is fetched at this time. |
| GetThumbnail | Gets the search item thumbnail if available, otherwise the thumbnail is fetched at this time. The thumbnail is usually used in list view compared to the grid view. |
| GetValue | Get the default search item value of a given field. |
| RemoveField | Removes an item field. |
| SetField | Sets a field value and alias. |
| ToObject | Returns any valid Unity Object held by the search item. |
| TryGetField | Returns an item field if available. |
| TryGetValue | Returns' a field's value if any. Compared to SearchItem.TryGetField this method also resolved built-in field such as id, label, description, value, etc. |
