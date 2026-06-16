<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.DoesItemMatchSearch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| item | Item used for matching against the search string. |
| search | The search string of the TreeView. |

### Returns

**bool** True if item matches search string, otherwise false.

### Description

Override this function to extend or change the search behavior.

This function is called automatically for each TreeViewItem by the default BuildRows method. If true is returned then the TreeViewItem becomes part of the search result.

If you are overriding BuildRows and are building only the visible rows then handle the search yourself against your backend which has all the state.

By default this function is matching the search string against the name of the item.
