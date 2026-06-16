<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/api-register-provider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Registering a Search Provider

To add a new Search Provider, refer to the examples in the SearchProvider class.

These examples create a function and tag it with the SearchItemProvider attribute:

- The function must return a new `SearchProvider` instance.
- The `SearchProvider` instance must have the following:
  - A unique `type`. For example, **Asset**, **Menu**, or ****Scene****.
  - A `displayName` to use in the Filters pane.
- The optional `filterId` provides a search token for text-based filtering. For example, `p:` is the filter ID for Asset searches.

## Registering a Search Provider shortcut

To register a shortcut for a new provider, use:

```
[UsedImplicitly, Shortcut("Help/Quick Search/Assets")]
private static void PopQuickSearch()
{
    // Open Search with only the "Asset" provider enabled.
    SearchService.ShowContextual("asset");
}
```

You can map shortcuts to keys or key combinations using the shortcuts manager.
