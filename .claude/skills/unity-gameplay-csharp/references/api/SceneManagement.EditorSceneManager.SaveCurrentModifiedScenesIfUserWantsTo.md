<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if the user clicked **Save** or **Don't Save** to indicate that that it is ok to close the open scenes after the dialog closes. Returns false if the user clicked **Cancel** to abort.

### Description

Asks the user if they want to save the current open modified Scene or Scenes in the Hierarchy.

The SaveCurrentModifiedScenesIfUserWantsTo() shows a dialog listing the modified Scenes.

This method is intended to be used when closing scenes. It opens a dialog box asking the user what they want to do, to ensure they don't lose unsaved scene changes that they want to keep.

The dialog box has three options: **Save**, **Don't Save**, and **Cancel**.

If the user selects **Save**, the Editor saves the modified Scenes. If the user selects **Don't Save**, the Editor does nothing. However, both **Save** and _Don't Save__ indicate that the user is okay to proceed with the current operation (closing the Scenes). Therefore both these choices return true to indicate that the operation can continue.

If the user selects **Cancel**, it means the user wants to cancel the operation that caused this dialog to appear (i.e. the user does not want to close the Scenes). This option causes the method to return false.

```csharp
// Add an editor menu item that enables Scenes to be saved or not,
// This example adds the editor extension into an Examples menu.using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;public class ExampleClass : MonoBehaviour
{
    [MenuItem("Examples/Save current Scene(s) if required")]
    static void MaybeSaveScenes()
    {
        if (EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo())
        {
            Debug.Log("Continue... (Save or Don't Save was clicked)");
        }
        else
        {
            Debug.Log("Abort... (Cancel was clicked)");
        }
    }
}
```
