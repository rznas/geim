<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-hierarchyChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event that is raised when an object or group of objects in the hierarchy changes.

Actions that trigger this event include creating, renaming, reparenting, or destroying objects in the current hierarchy, as well as loading, unloading, renaming, or reordering loaded Scenes. Note that the event is not raised immediately in response to these actions, but rather during the next update of the editor application.

Actions taken with objects that have HideFlags.HideInHierarchy set will not cause this event to be raised, but changing Object.hideFlags will.

The following example script logs the number of objects to the console whenever the hierarchy changes. Copy it into a file called HierarchyMonitor.cs and put it in a folder called Editor.

```csharp
using System.Linq;
using UnityEditor;
using UnityEngine;[InitializeOnLoadAttribute]
public static class HierarchyMonitor
{
    static HierarchyMonitor()
    {
        EditorApplication.hierarchyChanged += OnHierarchyChanged;
    }    static void OnHierarchyChanged()
    {
        var all = Resources.FindObjectsOfTypeAll(typeof(GameObject));
        var numberVisible =
            all.Where(obj => (obj.hideFlags & HideFlags.HideInHierarchy) != HideFlags.HideInHierarchy).Count();
        Debug.LogFormat("There are currently {0} GameObjects visible in the hierarchy.", numberVisible);
    }
}
```

Additional resources: EditorWindow.OnHierarchyChange.
