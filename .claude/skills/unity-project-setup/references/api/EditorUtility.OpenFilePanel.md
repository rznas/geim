<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.OpenFilePanel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| title | The text to display in the title bar of the dialog window. |
| directory | The default file directory that this dialog opens. This parameter is relative to the project directory. For example, "Assets" displays the Assets directory when this dialog opens. |
| extension | The file extensions to filter in this dialog. Do not precede file extension names with a period. Enter an empty string to include all file types. Separate multiple file extensions with a comma and no space between entries. |

### Returns

**string** The fully qualified path to a file.

### Description

Displays the "open file" dialog and returns the selected path name.

Additional resources: SaveFilePanel function.


 *Open File Panel.*

```csharp
using System.IO;
using UnityEngine;
using UnityEditor;public class OpenFilePanelExample : EditorWindow
{
    [MenuItem("Example/Overwrite Texture")]
    static void Apply()
    {
        Texture2D texture = Selection.activeObject as Texture2D;
        if (texture == null)
        {
            EditorUtility.DisplayDialog("Select Texture", "You must select a texture first!", "OK");
            return;
        }        string path = EditorUtility.OpenFilePanel("Overwrite with png", "", "png");
        if (path.Length != 0)
        {
            var fileContent = File.ReadAllBytes(path);
            texture.LoadImage(fileContent);
        }
    }
}
```
