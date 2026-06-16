<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.OnHierarchyChange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handler for message that is sent when an object or group of objects in the hierarchy changes.

Actions that trigger this message include creating, renaming, reparenting, or destroying objects in the current hierarchy, as well as loading, unloading, renaming, or reordering loaded Scenes. Note that the message is not sent immediately in response to these actions, but rather during the next update of the editor application.

Actions taken with objects that have HideFlags.HideInHierarchy set will not cause this message to be sent, but changing Object.hideFlags will.

The OnHierarchyChange() is added to the Unity editor. Adding a new GameObject into the Scene, or changing the position of a GameObject in the Inspector will be observed by OnHierarchyChange(). Similarly, changes to the rotation and scale will be seen.


 *An animation showing how the OnHierarchyChange can be used.*

Additional resources: EditorApplication.hierarchyChange

The following example script created an EditorWindow that monitors the number of objects and updates whenever the hierarchy changes. Copy it into a file called HierarchyMonitorWindow.cs and put it in a folder called Editor.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

class HierarchyMonitorWindow : EditorWindow
{
    [MenuItem("Examples/Hierarchy Monitor")]
    static void CreateWindow()
    {
        EditorWindow.GetWindow<HierarchyMonitorWindow>();
    }

    [SerializeField]
    int m_NumberVisible;

    void OnEnable()
    {
        titleContent.text = "Hierarchy Monitor";
        // Manually call the event handler when the window is first loaded so its contents are up-to-date.
        OnHierarchyChange();
    }

    void OnHierarchyChange()
    {
        var all = Resources.FindObjectsOfTypeAll(typeof(GameObject));
        m_NumberVisible = CountVisibleObjects(all);
        var label = rootVisualElement.Q<Label>();
        if (label != null)
            label.text = $"There are currently {m_NumberVisible} GameObjects visible in the hierarchy.";
    }

    int CountVisibleObjects(Object[] objects)
    {
        int count = 0;
        foreach (var obj in objects)
        {
            var gameObject = obj as GameObject;
            if (gameObject != null && (gameObject.hideFlags & HideFlags.HideInHierarchy) != HideFlags.HideInHierarchy)
            {
                count++;
            }
        }
        return count;
    }

    void CreateGUI()
    {
        var label = new Label($"There are currently {m_NumberVisible} GameObjects visible in the hierarchy.");
        rootVisualElement.Add(label);
    }
}
```

Another simple example.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class OnHierarchyChangeExample : EditorWindow
{
    static int count = 0;

    [MenuItem("Examples/OnHierarchyChange Example")]
    static void Init()
    {
        OnHierarchyChangeExample window = (OnHierarchyChangeExample)GetWindow(typeof(OnHierarchyChangeExample));
        window.Show();
    }

    void OnHierarchyChange()
    {
        count += 1;
    }

    void CreateGUI()
    {
        var label = new Label();
        rootVisualElement.Add(label);

        label.schedule.Execute(() =>
        {
            label.text = $"OnHierarchyChange: {count}";
        }).Every(10);
    }
}
```
