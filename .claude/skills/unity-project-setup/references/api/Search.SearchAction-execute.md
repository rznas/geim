<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchAction-execute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Executes an action on a set of items.

```csharp
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
```
