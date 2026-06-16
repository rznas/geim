<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.RepaintHierarchyWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Refreshes the Hierarchy window.

Use EditorApplication.RepaintHierarchyWindow to refresh the Hierarchy window when changes to GameObjects, such as names, icons, or tags, are not automatically reflected in the Hierarchy window.

`RepaintHierarchyWindow` can be useful when used with custom Editor tools or extensions that dynamically alter GameObject properties. `RepaintHierarchyWindow` can negatively affect Editor performance, so avoid frequent calls in a performance-critical context.

This API is in the `UnityEditor` namespace and can only be used in the Unity Editor. Typically, you combine it with EditorApplication.hierarchyChanged or custom events to ensure UI consistency.

Additional resources: HierarchyWindowItemByEntityIdCallback, EditorApplication.hierarchyWindowItemByEntityIdOnGUI.

```csharp
using UnityEditor;
using UnityEngine;[InitializeOnLoad]
public class CustomHierarchyStyling
{    static CustomHierarchyStyling()
    {
     // Register a callback to draw custom icons in the Hierarchy.
     EditorApplication.hierarchyWindowItemByEntityIdOnGUI += OnHierarchyGUI;
     // Repaint the Hierarchy window when the tag changes to reflect icon updates.
     EditorApplication.hierarchyChanged += () => EditorApplication.RepaintHierarchyWindow();
    }    static void OnHierarchyGUI(EntityId entityID, Rect selectionRect)
    {        GameObject obj = EditorUtility.EntityIdToObject(entityID) as GameObject;        //Add a tag named "Special" to the GameObject to display the custom icon
        if (obj != null && obj.CompareTag("Special"))        { 
            // Draw a custom icon on the left side of the GameObject in the Hierarchy
            Rect iconRect = new Rect(selectionRect.x - 20, selectionRect.y, 18, 18);
            GUI.Label(iconRect, EditorGUIUtility.IconContent("d_Favorite"));
        }
    }}
```
