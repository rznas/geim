<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/api-search-provider-class.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# The SearchProvider class

The **SearchProvider** class executes searches for specific types of items, and manages thumbnails, descriptions, and sub-filters.

It has the following basic API:

```
public class SearchProvider
{
    public SearchProvider(string id, string displayName = null);

    // Creates an Item bound to this provider.
    public SearchItem CreateItem(string id, string label = null, string description = null, Texture2D thumbnail = null);

    // Utility functions to check whether the search text matches a string.
    public static bool MatchSearchGroups(string searchContext, string content);
    public static bool MatchSearchGroups(string searchContext, string content,
                                        out int startIndex, out int endIndex);

    // The provider's unique ID.
    public NameId name;
    // Text token to "filter" a provider (for example, "me:", "p:", and "s:").
    public string filterId;
    // This provider is only active when a search explicitly specifies it with
    // its filterId.
    public bool isExplicitProvider;
    // Handler to fetch and format the label of a search item.
    public FetchStringHandler fetchLabel;
    // Handler to provide an async description for an item. Called just before
    // Search displays the item.
    // Allows a plug-in provider to fetch long descriptions only when
    // Search needs them.
    public FetchStringHandler fetchDescription;
    // Handler to provider an async thumbnail for an item. Called just before
    // Search displays the item.
    // Allows a plug-in provider to fetch/generate previews only when
    // Search needs them.
    public PreviewHandler fetchThumbnail;
    // Handler to support drag interactions. It is up to the SearchProvider
    // to properly set up the DragAndDrop manager.
    public StartDragHandler startDrag;
    // Called when the selection changes and Search can track it.
    public TrackSelectionHandler trackSelection;
    // MANDATORY: Handler to get items for a search context.
    public GetItemsHandler fetchItems;
    // A Search Provider can return a list of words that help the user complete
    // their search query.
    public GetKeywordsHandler fetchKeywords;
    // List of sub-filters that are visible in the FilterWindow for a
    // SearchProvider (see AssetProvider for an example).
    public List<NameId> subCategories;
    // Called when the Search window opens. Allows the Provider to perform
    // some caching.
    public Action onEnable;
    // Called when the Search window closes. Allows the Provider to release
    // cached resources.
    public Action onDisable;
    // Int to sort the Provider. Affects the order of search results and the
    // order in which providers are shown in the FilterWindow.
    public int priority;
    // Called when Search opens in "contextual mode". If you return true
    // it means the provider is enabled for this search context.
    public IsEnabledForContextualSearch isEnabledForContextualSearch;
}
```

## Caching and releasing resources

When you launch the Search window, it calls `onEnable`, which you can use to cache resources.

When you close the Search window, it calls `onDisable`, which you can use to release resources.

## Initialization

Because the Search item list uses a virtual scrolling algorithm, some `SearchItem` fields (for example, `label`, `thumbnail`, and `description`) are fetched on demand, if they are not already provided.

To populate those fields after the items are created, you need to initialize the `SearchProvider` with specific handlers (`fetchLabel`, `fetchDescription`, `fetchThumbnail`).

## Tracking item selection

You can register a callback on `trackSelection` to have Search do something whenever you select an item in the search results using the mouse or the keyboard. For example, the Asset and Scene providers use the `trackSelection` callback to ping the selected item in Search.

## Enabling drag and drop

Some Search Providers return items that you can drag and drop into the Scene. If you are creating a custom provider whose items support drag and drop, implement `startDrag`.

For example, the Asset and Scene providers populate the `DragAndDrop` structure with the relevant item UIDs to allow proper drag and drop interactions.

## Including a provider in a contextual search

When you open the Search window with the **Alt Shift + C** shortcut, it starts a contextual search, meaning Search searches the window that has focus.

When you launch a contextual search, providers that override `isEnabledForContextualSearch` check to see if they should be enabled, as in the following example:

```
// Taken from Scene hierarchy provider:
// Makes the provider part of the contextual search if the Scene view or the
// Hierarchy window has focus.
isEnabledForContextualSearch = () =>
                QuickSearchTool.IsFocusedWindowTypeName("SceneView") ||
                QuickSearchTool.IsFocusedWindowTypeName("SceneHierarchyWindow");
```
