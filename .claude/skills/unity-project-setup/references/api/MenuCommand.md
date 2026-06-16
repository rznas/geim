<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MenuCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used to extract the context for a MenuItem.

MenuCommand objects are passed to custom menu item functions defined using the MenuItem attribute.

**Note:** The menu is added to the object and is accessible by right-clicking in the inspector. The script code requires the CONTEXT option.

```csharp
// Add context menu named "Do Something" to context menu
using UnityEngine;
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

Additional resources: MenuItem.

### Properties

| Property | Description |
| --- | --- |
| context | Context is the object that is the target of a menu command. |
| userData | An integer for passing custom information to a menu item. |

### Constructors

| Constructor | Description |
| --- | --- |
| MenuCommand | Creates a new MenuCommand object. |
