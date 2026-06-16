<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.MakeEditable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path to the file. |

### Returns

**bool** `true` if Unity successfully made the file editable in the version control system. Otherwise, returns `false`.

### Description

Makes a file open for editing in version control.

Your version control system may be configured to only allow a single person at a time to edit certain types of files in order to avoid merge conflicts that arise when multiple people edit the same file. In this case, you must 'open' that file for editing (also known as 'checking out') to ensure that you have permission to edit the file at this time. Use this function to make a file 'open for editing' in a version control system that supports it.

File paths that are outside of Unity project folder, or not under version controlled folders (for example, "Library" or "Temp"), are always considered editable. `MakeEditable` returns `true` for them, and otherwise does nothing.

File paths that refer to non-local Package folders are always considered to be non-editable. `MakeEditable` returns `false` for them.

When no version control system is active, then file paths inside the project are all considered already editable. `MakeEditable` returns `true` and otherwise does nothing.

When using a version control system, for example Perforce Helix, `MakeEditable` triggers a "Checkout" operation on the files, unless they are already editable. For files that were not added to version control yet, `MakeEditable/` will add them to version control.

If you set up a pre-checkout callback, Unity calls it as part of `MakeEditable`. See PreCheckoutCallback for more details.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleScript : MonoBehaviour
{
    [MenuItem("Example/Checkout Selected Asset")]
    public static void MenuExample()
    {
        var path = AssetDatabase.GetAssetPath(Selection.activeObject);
        var ok = AssetDatabase.MakeEditable(path);
        if (!ok)
            Debug.LogError($"Could not make {path} editable");
    }
}
```

Additional resources: AssetDatabase.IsOpenForEdit.

### Parameters

| Parameter | Description |
| --- | --- |
| paths | Specifies an array of file paths relative to the project root. |
| prompt | Dialog prompt to show to the user, if a version control operation needs to be done. If `null` (default), no prompt is shown. |
| outNotEditablePaths | Output list of file paths that could not be made editable. |

### Returns

**bool** `true` if Unity successfully made all files editable in the version control system.

### Description

Makes a list of files open for editing in version control.

A multi-file variant of `MakeEditable`, that can also optionally show a prompt to the user if a Checkout/Add version control operation needs to be done. If the user cancels the dialog, Unity does not make the files editable. If the Unity Editor is operating in batch mode, Unity does not show a dialog and acts as if the user accepted the dialog prompt.

If you pass an `outNotEditablePaths` List, this function fills it with file paths that Unity could make editable.

```csharp
using System.Linq;
using UnityEngine;
using UnityEditor;public class ExampleScript : MonoBehaviour
{
    [MenuItem("Example/Checkout Selected Assets")]
    public static void MenuExample()
    {
        var guids = Selection.assetGUIDs;
        var paths = guids.Select(AssetDatabase.GUIDToAssetPath).ToArray();
        var ok = AssetDatabase.MakeEditable(paths, "These files need to be checked out");
        if (!ok)
            Debug.LogError("Could not make some files editable");
    }
}
```

Additional resources: AssetDatabase.IsOpenForEdit.
