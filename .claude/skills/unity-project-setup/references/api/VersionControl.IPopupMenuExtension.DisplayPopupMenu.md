<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.IPopupMenuExtension.DisplayPopupMenu.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position of the context menu. |

### Description

Displays a version control system context menu.

The menu is shown when a user right clicks the top left corner of an asset icon.

```csharp
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;[VersionControl("Custom")]
public class CustomVersionControlObject : VersionControlObject, IPopupMenuExtension
{
    public void DisplayPopupMenu(Rect position)
    {
        EditorUtility.DisplayPopupMenu(position, "CONTEXT/Custom", null);
    }    [MenuItem("CONTEXT/Custom/Print Selected Assets")]
    static void PrintSelectedAssets()
    {
        var guids = Selection.assetGUIDs;
        if (guids == null || guids.Length == 0)
        {
            Debug.LogWarning("Empty selection.");
            return;
        }        var message = "Selected asset(s):";
        foreach (var guid in guids)
        {
            var path = AssetDatabase.GUIDToAssetPath(guid);
            message += ' ' + path;
        }
        Debug.Log(message);
    }
}
```

Additional resources: IPopupMenuExtension, VersionControlObject.
