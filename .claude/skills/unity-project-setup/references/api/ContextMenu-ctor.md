<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContextMenu-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| itemName | The name of the context menu item. |
| isValidateFunction | Whether this is a validate function (defaults to false). |
| priority | Priority used to override the ordering of the menu items (defaults to 1000000). The lower the number the earlier in the menu it will appear. |

### Description

Adds the function to the context menu of the component.

In the inspector of the attached script. When the user selects the context menu, the function will be executed.

This is most useful for automatically setting up Scene data from the script. The function has to be non-static.

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
