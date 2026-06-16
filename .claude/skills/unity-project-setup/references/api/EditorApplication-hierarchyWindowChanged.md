<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-hierarchyWindowChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A callback to be raised when an object in the hierarchy changes.

Each time an object is (or a group of objects are) created, renamed, parented, unparented or destroyed this callback is raised.

Additional resources: EditorWindow.OnHierarchyChange.

```csharp
using UnityEditor;
using UnityEngine;public class ExampleCode
{
    [MenuItem("Example/Hierarchy Window Changed")]
    static void Example()
    {
        EditorApplication.hierarchyWindowChanged += ExampleCallback;
    }    static void ExampleCallback()
    {
        Object[] all = Resources.FindObjectsOfTypeAll(typeof(Object));
        Debug.Log("There are " + all.Length + " objects at the moment.");
    }
}
```

**Note:** Changing the HideFlags on an object will also cause this callback to be called.
