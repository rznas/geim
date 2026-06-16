<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContextMenu.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use the ContextMenu attribute to add commands to the context menu of the Inspector window.

In the Inspector window of the attached script, when the user selects the context menu, the function executes.

This is most useful for automatically setting up Scene data from the script. The function has to be non-static.

If you want to create a context menu when you right-click a property in the Inspector, use EditorApplication.contextualPropertyMenu. 

If you want to create a menu item that invokes a static function when it is selected, refer to MenuItem.

```csharp
using UnityEngine;public class ContextTesting : MonoBehaviour
{
    /// Add a context menu named "Do Something" in the inspector
    /// of the attached script.
    [ContextMenu("Do Something")]
    void DoSomething()
    {
        Debug.Log("Perform operation");
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| ContextMenu | Adds the function to the context menu of the component. |
