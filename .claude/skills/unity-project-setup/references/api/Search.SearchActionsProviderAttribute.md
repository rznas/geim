<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchActionsProviderAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to declare a static method that defines new actions for specific search providers.

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
