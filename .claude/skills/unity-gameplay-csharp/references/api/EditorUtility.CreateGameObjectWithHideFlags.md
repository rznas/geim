<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.CreateGameObjectWithHideFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a game object with HideFlags and specified components.

This is very similar to creating a GameObject the usual way, except it sets the specified HideFlags immediately.

 *Editor Window that shows how does the example looks.*

```csharp
using UnityEngine;
using UnityEditor;public class CreateGOHideFlagsExample : EditorWindow
{
    string objName = "GameObject";
    int instanceID = 0;
    bool create = true;
    GameObject go = null;
    bool hideHierarchy = false;    [MenuItem("Example/GameObject Flags")]
    static void Init()
    {
        // Get existing open window or if none, make a new one:
        CreateGOHideFlagsExample window = (CreateGOHideFlagsExample)EditorWindow.GetWindow(typeof(CreateGOHideFlagsExample));
        window.Show();
    }    void OnGUI()
    {
        create = EditorGUILayout.Toggle("Create a GO:", create);
        GUI.enabled = create;        objName = EditorGUILayout.TextField("GameObject Name:", objName);
        if (GUILayout.Button("Create"))
        {
            GameObject created = EditorUtility.CreateGameObjectWithHideFlags(objName,
                hideHierarchy ? HideFlags.HideInHierarchy : 0);            instanceID = created.GetInstanceID();
            Debug.Log("Created GameObject ID: " + instanceID);
        }        GUI.enabled = !create;        EditorGUILayout.BeginHorizontal();        instanceID = EditorGUILayout.IntField("Instance ID:", instanceID);        if (GUILayout.Button("Search & Update flags"))
        {
            go = null;
            go = EditorUtility.InstanceIDToObject(instanceID) as GameObject;
            if (go)
                go.hideFlags = hideHierarchy ? HideFlags.HideInHierarchy : 0;
        }        EditorGUILayout.EndHorizontal();        if (!go)
            EditorGUILayout.LabelField("Object: ", (go == null) ? "No object was found" : go.name);        GUI.enabled = true;
        hideHierarchy = EditorGUILayout.Toggle("HideInHierarchy", hideHierarchy);
    }    void OnInspectorUpdate()
    {
        Repaint();
    }
}
```
