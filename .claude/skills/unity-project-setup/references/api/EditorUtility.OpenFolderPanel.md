<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.OpenFolderPanel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| title | The text to display in the title bar of the dialog window. |
| folder | The default file directory that this dialog opens. This parameter is relative to the project directory. For example, "Assets" displays the Assets directory when this dialog opens. |
| defaultName | The default name to name the folder. Can be an empty string. |

### Returns

**string** The fully qualified path to a folder.

### Description

Displays the "open folder" dialog and returns the selected path name.

Additional resources: OpenFilePanel, SaveFolderPanel functions.

```csharp
using UnityEditor;
using System.IO;public class OpenFolderPanelExample : EditorWindow
{
    [MenuItem("Example/Load Textures To Folder")]
    static void Apply()
    {
        string path = EditorUtility.OpenFolderPanel("Load png Textures", "", "");
        string[] files = Directory.GetFiles(path);        foreach (string file in files)
            if (file.EndsWith(".png"))
                File.Copy(file, EditorApplication.currentScene);
    }
}
```
