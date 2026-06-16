<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ISearchView.SetSearchText.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| searchText | Text displayed in the search view. |
| moveCursor | Position of the cursor after setting the search text. |

### Description

Sets the search query text.

.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Search;

static class Example_ISearchView_SetSearchText
{
    [MenuItem("Examples/ISearchView/SetSearchText")]
    public static void SetInitialText()
    {
        var view = SearchService.ShowContextual("asset");

        // Set the initial text of Search view. By default the whole text of the search query will be selected.
        view.SetSearchText("t:prefab");
        Debug.Assert(view.context.searchText == "t:prefab");
    }

    [MenuItem("Examples/ISearchView/SetSearchText_WithCursorPosition")]
    public static void SetSearchText_WithCursorPosition()
    {
        var view = SearchService.ShowContextual("asset");
        view.SetSearchText("t:material", TextCursorPlacement.MoveLineStart);
    }

}
```
