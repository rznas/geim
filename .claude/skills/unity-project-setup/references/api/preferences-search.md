<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/preferences-search.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Search preferences reference

Change search settings, provider settings, and index settings to meet your search needs.

To open the preferences, go to **Edit > Preferences > Search** (macOS: **Unity > Settings > Search**).

## General search settings

| **Setting** | **Description** |
| --- | --- |
| **Track the current selection in the search view** | Invoke the `SearchProvider.trackSelection` callback each time the Search selection changes.  The callback pings assets in the **Project** and **Hierarchy** windows, which can slow search navigation in large projects. |
| **Generate an asset preview thumbnail for found items** | Display thumbnails for items that are currently visible in the results pane of the **Search** window.  When you disable this setting, the **Search** window displays a generic icon. This is useful in large projects, where generating thumbnails can slow navigation. |
| **Refresh Search views in Play Mode** | Refresh results when Play mode causes changes in the hierarchy. |
| **Select the typing debounce threshold (ms)** | Set the time the system waits for the user to finish typing before executing the search. |

## Search provider settings

| **Setting** | **Description** |
| --- | --- |
| **Provider order** | Use the arrows to change the order in which the **Search** window lists results. All items of a given provider priority appear before any lower priority provider items. |
| **Default action dropdowns** | Choose the default actions to run when you select (for example, double-click) an item in the search results. |
| **Reset Provider Settings** | Resets all providers to their default state, action, and priority. |

## Search engines settings

Select how to search in object fields, the **Project** window, and the **Hierarchy** window: classic search or advanced search. For more information, refer to Use the Advanced Object Picker.

## Indexing settings

To customize indexing, go to **Preferences** > **Search** > **Indexing**.

| **Setting** | **Description** |
| --- | --- |
| **Custom indexers list** | Enable and disable custom indexers. For more information, refer to Create custom search indexers. |
| **Index on Editor startup** | Start indexing automatically when the Unity Editor launches. When disabled, indexing only occurs the first time any Search API or tool is used. The option is disabled by default. |
| **Deep **scene** and **prefab** indexing** | Index the full content of scenes and prefabs. This process is longer than normal indexing. This option is disabled by default. |
| **Packages indexing** | Index the content of all the packages in the project. This process is longer than normal indexing. This option is disabled by default. |
| **Ignored properties** | Enter properties you want the index to ignore. The default list of ignored properties is appropriate for most use cases. |

## Additional resources

For more information, refer to the following resources:

- Search provider references
- Create custom search indexers
- Use the Advanced Object Picker
