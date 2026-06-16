<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-contextualPropertyMenu.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback raised whenever the user context-clicks on a property in an Inspector.

This callback is useful to add custom contextual menu items which can perform operations on a particular property.

```csharp
//This script creates a new menu item named "Example" in the Window dropdown menu. Press this to create the Example window.using UnityEngine;
using UnityEditor;
using System.Collections;public class Example : EditorWindow
{
    [MenuItem("Window/Example")]    public static void  ShowWindow()
    {
        EditorWindow.GetWindow(typeof(Example));
    }    void OnEnable()
    {
        EditorApplication.contextualPropertyMenu += OnPropertyContextMenu;
    }    void OnDestroy()
    {
        EditorApplication.contextualPropertyMenu -= OnPropertyContextMenu;
    }    void OnPropertyContextMenu(GenericMenu menu, SerializedProperty property)
    {
        // show a custom menu item only for Vector3 properties
        if (property.propertyType != SerializedPropertyType.Vector3)
            return;        // and only when called on a Transform component
        if (property.serializedObject.targetObject.GetType() != typeof(Transform))
            return;        var propertyCopy = property.Copy();
        menu.AddItem(new GUIContent("Randomize Vector"), false, () =>
        {
            propertyCopy.vector3Value = Random.insideUnitSphere * 5;
            propertyCopy.serializedObject.ApplyModifiedProperties();
        });
    }
}
```
