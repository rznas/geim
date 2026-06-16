<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.OnProjectChange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handler for message that is sent whenever the state of the project changes.

Actions that trigger this message include creating, renaming, or reparenting assets, as well as moving or renaming folders in the project. Note that the message is not sent immediately in response to these actions, but rather during the next update of the editor application.

Actions taken with assets that have HideFlags.HideInHierarchy set will not cause this message to be sent.

 The OnProjectChange message is used to report when the items in the Project window change. Changes can include examples such as new GameObjects or Materials being added to the project. Additionally, adding folders with no contents will work as expected. As a final example OnProjectChange will be used to see any changes in the Project window. 
 Additional resources: EditorApplication.projectChanged. .

```csharp
using UnityEditor;class MyEditor : EditorWindow
{
    void OnProjectChange()
    {
         // Update editor according to changes in the Project
    }
}
```
