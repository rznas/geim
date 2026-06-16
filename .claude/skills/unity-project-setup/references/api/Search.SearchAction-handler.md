<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchAction-handler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This handler is used for actions that do not support multi-selection.

```csharp
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
```
