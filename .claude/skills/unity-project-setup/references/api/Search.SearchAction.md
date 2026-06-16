<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines an action that can be applied on a SearchItem of a specific search provider type.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;
using UnityEngine.Rendering;

public class Example_SearchAction
{
    [SearchActionsProvider]
    internal static IEnumerable<SearchAction> ActionHandlers()
    {
        return new[]
        {
            new SearchAction("asset", "print_dependencies", new GUIContent("Print Dependencies", null, "Print all dependencies of an asset."))
            {
                // If this action is the default, double-clicking on an item to execute this action will not close the Search window.
                closeWindowAfterExecution = false,

                // Handler for a single item.
                handler = (item) =>
                {
                    var asset = item.ToObject();
                    if (!asset)
                        return;
                    var path = AssetDatabase.GetAssetPath(asset);
                    if (string.IsNullOrEmpty(path))
                        return;

                    var dependencyPaths = AssetDatabase.GetDependencies(path);
                    foreach (var dependencyPath in dependencyPaths)
                    {
                        var o = AssetDatabase.LoadAssetAtPath<UnityEngine.Object>(dependencyPath);
                        if (o != null)
                            Debug.Log(dependencyPath, o);
                    }
                }
            },

            new SearchAction("scene", "toggle_cast_shadows", new GUIContent("Toggle Cast Shadows", null, "Toggle Cast Shadows on a Mesh"))
            {
                // Only enable this action if any of the selected items are actually a GameObject with a MeshRenderer.
                enabled = items =>
                {
                    foreach (var searchItem in items)
                    {
                        var go = searchItem.ToObject<GameObject>();
                        if (!go)
                            continue;
                        var mesh = go.GetComponent<MeshRenderer>();
                        if (mesh)
                            return true;
                    }
                    return false;
                },
                // Handler for multiple items: (used when multi selection is used in the Search Window).
                execute = (items) =>
                {
                    foreach (var searchItem in items)
                    {
                        var go = searchItem.ToObject<GameObject>();
                        if (!go)
                            continue;
                        var mesh = go.GetComponent<MeshRenderer>();
                        if (!mesh)
                            continue;
                        mesh.shadowCastingMode = mesh.shadowCastingMode == ShadowCastingMode.Off ? ShadowCastingMode.On : ShadowCastingMode.Off;
                    }
                }
            },
        };
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| closeWindowAfterExecution | Indicates if the search view should be closed after the action execution. |
| content | GUI content of the search action used when displayed with an icon. |
| displayName | Display name for the search action. |
| enabled | Callback used to check if the action is enabled based on the current context. |
| execute | Executes an action on a set of items. |
| handler | This handler is used for actions that do not support multi-selection. |
| id | Action unique identifier. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchAction | Default constructor to build a search action. |
