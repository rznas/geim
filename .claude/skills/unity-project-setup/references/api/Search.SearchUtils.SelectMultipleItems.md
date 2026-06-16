<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchUtils.SelectMultipleItems.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| items | Search Items to select and ping. |
| focusProjectBrowser | If true, will focus the project browser before pinging the objects. |
| pingSelection | If true, will ping the selected objects. |

### Description

Select and ping multiple objects in the Project Browser.

```csharp
private static void DeleteAssets(IEnumerable<SearchItem> items)
{
    var oldSelection = Selection.objects;
    SearchUtils.SelectMultipleItems(items, pingSelection: false);
    // We call ProjectBrowser.DeleteSelectedAssets for the confirmation popup.
    ProjectBrowser.DeleteSelectedAssets(true);
    Selection.objects = oldSelection;
}
```
