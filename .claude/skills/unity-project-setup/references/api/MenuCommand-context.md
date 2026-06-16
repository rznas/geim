<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MenuCommand-context.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Context is the object that is the target of a menu command.

Usually the context is the current selection or the item under the mouse when invoking a context menu. The new menu item is added to the list supplied by the selected component. The component in the Inspector has a clickable circular item at the top right. The image below shows how the Rigidbody has a MenuItem that is accessible with a click. The Context name is "Do Something". See the script below.


 *Context menu location.*

```csharp
// Add a context menu item named "Do Something" to the Rigidbody top right context menuusing UnityEngine;
using UnityEditor;public class Something : EditorWindow
{
    // Add menu item
    [MenuItem("CONTEXT/Rigidbody/Do Something")]
    static void DoSomething(MenuCommand command)
    {
        Rigidbody body = (Rigidbody)command.context;
        body.mass = 5;
        Debug.Log("Changed Rigidbody's Mass to " + body.mass + " from Context Menu...");
    }
}
```
