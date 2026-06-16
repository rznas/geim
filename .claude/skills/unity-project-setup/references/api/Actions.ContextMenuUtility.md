<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Actions.ContextMenuUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods to add menu items to the Scene view context menu.

```csharp
using UnityEditor;
using UnityEditor.Actions;
using UnityEngine;

// Add a menu item to the Scene View context menu that creates a cube where-ever the mouse clicks.
public class CreateCube : EditorAction
{
    GameObject m_GameObject;
    int m_UndoStart;

    // Prefixing the menu item path with "CONTEXT" indicates that this is a context menu item. Context menu items are
    // not added to the application menu bar. The second section of the menu path is the name of the type that this
    // menu item is applicable to. The context menu in the Scene View for example will look for context menu items for
    // each of the following types:
    //    1. The active EditorToolContext type.
    //    2. The active EditorTool type.
    //    3. All component types in the selection. Ex, Transform, MeshRenderer, BoxCollider, etc...
    // As an example, to create a context menu item that is shown when context clicking in the Scene View with a
    // GameObject selected that has a MeshFilter component, use "CONTEXT/MeshFilter/My Menu Item".
    [MenuItem("CONTEXT/GameObjectToolContext/Create Cube")]
    static void Init()
    {
        EditorAction.Start<CreateCube>();
    }

    public CreateCube()
    {
        // Show a preview cube at the cursor.
        m_GameObject = GameObject.CreatePrimitive(PrimitiveType.Cube);
        // If the action is cancelled, we'll clean up the unused resource by calling Undo.PerformUndo().
        Undo.RegisterCreatedObjectUndo(m_GameObject, "Create Cube");
        // To avoid an unsightly "jump" when the cursor first moves, disable the preview until we have a valid
        // intersection point to place the object.
        m_GameObject.SetActive(false);
        m_UndoStart = Undo.GetCurrentGroup();
    }

    public override void OnSceneGUI(SceneView view)
    {
        var evt = Event.current;
        var id = GUIUtility.GetControlID(FocusType.Passive);

        if (evt.type == EventType.MouseMove)
        {
            HandleUtility.AddControl(id, 0);
            // Disable preview object so that we don't intersect with object placement ray.
            m_GameObject.SetActive(false);
            var intersected = HandleUtility.PlaceObject(evt.mousePosition, out var position, out var normal);
            m_GameObject.SetActive(true);
            if (intersected)
            {
                Undo.RecordObject(m_GameObject, "Create Cube");
                m_GameObject.transform.position = position;
                m_GameObject.transform.rotation = Quaternion.LookRotation(normal);
            }
        }

        // By checking that no mouse modifiers are active, we can allow for camera movement without breaking the
        // action.
        if (evt.type == EventType.MouseDown && evt.modifiers == EventModifiers.None)
        {
            GUIUtility.hotControl = id;
            evt.Use();
        }

        if (GUIUtility.hotControl == id && evt.type == EventType.MouseUp)
        {
            evt.Use();
            GUIUtility.hotControl = 0;
            Finish(EditorActionResult.Success);
        }
    }

    // Since the object we want to instantiate is already in the scene, there is nothing more to do in the OnFinish
    // function if the action exits successfully. If the action is cancelled however, we'll remove the instantiated
    // object from the scene by calling undo.
    protected override void OnFinish(EditorActionResult result)
    {
        if (result == EditorActionResult.Canceled)
        {
            Undo.PerformUndo();
            return;
        }

        Selection.activeObject = m_GameObject;
        // Merge the selection change and GameObject creation/placement to a single undo entry.
        Undo.CollapseUndoOperations(m_UndoStart);
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| AddClipboardEntriesTo | Adds clipboard operations to the Scene view context menu. |
| AddComponentEntriesTo | Adds the component menu items of the current selection to the Scene view context menu. |
| AddGameObjectEntriesTo | Adds the default actions for a GameObject and the component menu items of the current selection to the Scene view context menu. |
| AddMenuItem | Add a MenuItem to the Scene view context menu. |
| AddMenuItemsForType | Adds all MenuItem of a specific type to the Scene view context menu. |
| AddMenuItemWithContext | Adds a MenuItem to the Scene view context menu. |
