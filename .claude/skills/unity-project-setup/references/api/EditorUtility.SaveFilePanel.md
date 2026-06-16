<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.SaveFilePanel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| title | The title of the window to display. |
| directory | The working directory that this dialog opens on. |
| defaultName | The placeholder text to display in the "Save As" text field. This is the name of file to be saved. |
| extension | The file extension to use in the saved file path. For example, enter "png" to save an image in the PNG format. |

### Returns

**string** A string path to the saved file if the dialog was canceled or the save failed, it returns an empty string.

### Description

Displays the "save file" dialog and returns the selected path name.

This function displays a dialog that prompts the user for a path to save an asset to. It does not create the file or parent directories. You are responsible for creating and writing to the file at the returned path location. **Note:** The dialog has a Save button and a Cancel button. If you click the Cancel button, the window closes without saving.

Additional resources: OpenFilePanel function.


 *Save File Panel.*

```csharp
// Opens a file selection dialog for a PNG file and saves a selected texture to the file.using UnityEditor;
using UnityEngine;
using System.IO;public class EditorUtilitySaveFilePanel : MonoBehaviour
{
    [MenuItem("Examples/Save Texture to file")]
    static void Apply()
    {
        Texture2D texture = Selection.activeObject as Texture2D;
        if (texture == null)
        {
            EditorUtility.DisplayDialog(
                "Select Texture",
                "You Must Select a Texture first!",
                "OK");
            return;
        }        var path = EditorUtility.SaveFilePanel(
            "Save texture as PNG",
            "",
            texture.name + ".png",
            "png");        if (path.Length != 0)
        {
            var pngData = texture.EncodeToPNG();
            if (pngData != null)
                File.WriteAllBytes(path, pngData);
        }
    }
}
```
