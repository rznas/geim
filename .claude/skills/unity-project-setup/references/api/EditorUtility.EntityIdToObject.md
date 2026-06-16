<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.EntityIdToObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Translates an EntityId to a reference to an object.

If the object is not loaded from disk, loads it from disk.


 *Editor Window to find an object, whose EntityId we will use to get and print the name of the object.*

```csharp
using UnityEngine;
using UnityEditor;public class EntityIdToObjectExample : EditorWindow
{
    static Object source;    [MenuItem("Example/ID To Name")]
    static void Init()
    {
        // Get existing open window or if none, make a new one:
        EntityIdToObjectExample window = (EntityIdToObjectExample)EditorWindow.GetWindow(typeof(EntityIdToObjectExample));
        window.Show();
    }    void OnGUI()
    {
        source = EditorGUILayout.ObjectField("Entity Id:", source, typeof(Object), true);
        var id = source ? source.GetEntityId() : EntityId.None;
        if (GUILayout.Button("Find Name"))
        {
            Object obj = EditorUtility.EntityIdToObject(id);
            if (!obj)
                Debug.LogError("No object could be found with instance id: " + id);
            else
                Debug.Log("Object's name: " + obj.name);
        }
    }    void OnInspectorUpdate()
    {
        Repaint();
    }
}
```
