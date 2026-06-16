<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.SaveFilePanelInProject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| title | The title of the window to display. |
| defaultName | The placeholder text to display in the "Save As" text field. This is the name of file to be saved. |
| extension | The file extension to use in the saved file path. For example, enter "png" to save an image in the PNG format. |
| message | The text summary to display in the dialog window. |
| path | The working directory for this dialog to open in. The default value is "Assets.". |

### Returns

**string** A string path to the saved file. If the dialog was canceled or the save failed, it returns an empty string.

### Description

Displays the "save file" dialog in the Assets folder of the project and returns the selected path name.

The returned string is always a project-relative path under the `Assets` folder. It starts with `Assets/`, for example: `Assets/MyFolder/MyFile.asset`

The dialog always opens to the root of the `Assets` folder, regardless of where the user has browsed or saved things to earlier in the session.

The value of `defaultName` is only used to prefill the file name field. Passing a full path in `defaultName` does not change the initial folder.

You can include the extension in `defaultName` (e.g., `MyFile.asset`) and it won't be duplicated if you also include it in the `extension` parameter. In general, the extension should be specified at least once, preferably using the `extension` parameter. 

Provide the `extension` without the dot, for example `asset` or `png`. Unity normalizes and enforces the extension based on this argument. If the user types a different extension, Unity may append or correct it to match the provided extension.

The `message` string is shown in the dialog UI as helper text or a prompt under the filename field, though presentation can differ between platforms.

Unity generally does not throw exceptions for typical invalid inputs to this dialog such as bad `defaultName`, empty `extension`, or unusual characters. Instead, the dialog still opens, potentially ignoring or sanitizing bad values.

If the user cancels or the operation can't complete, the return value is an empty string. Common cases where this can happen include:

- The user clicks Cancel.
- The chosen path would be invalid or outside `Assets/` and Unity rejects it.
- The extension enforcement conflicts and Unity can't resolve it.

There is no structured error object; you only get an empty string.

Additional resources: SaveFilePanel function.


 *Save File panel in project.*

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;public class SaveFilePanelInProjectExample : EditorWindow
{
    [MenuItem("Example/Save Texture In Project")]
    static void Apply()
    {
        Texture2D texture = Selection.activeObject as Texture2D;
        if (texture == null)
        {
            EditorUtility.DisplayDialog("Select Texture", "You must select a texture first!", "OK");
            return;
        }        string path = EditorUtility.SaveFilePanelInProject("Save png", texture.name + "png", "png",
            "Please enter a file name to save the texture to");
        if (path.Length != 0)
        {
            byte[] pngData = texture.EncodeToPNG();
            if (pngData != null)
            {
                File.WriteAllBytes(path, pngData);                // As we are saving to the asset folder, tell Unity to scan for modified or new assets
                AssetDatabase.Refresh();
            }
        }
    }
}
```
