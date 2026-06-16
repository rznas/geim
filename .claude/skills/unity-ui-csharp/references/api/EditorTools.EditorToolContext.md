<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.EditorToolContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to implement specialized versions of the built-in transform tools. Built-in transform tools include Move, Rotate, Scale, Rect, and Transform.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.EditorTools;
using UnityEngine;
// EditorToolContextAttribute is what registers a context with the UI.
[EditorToolContext("Wobbly Transform Tools")]
// The icon path can also be used with packages. Ex "Packages/com.wobblestudio.wobblytools/Icons/Transform.png".
[Icon("Assets/Examples/Icons/TransformIcon.png")]
public class WobbleContext : EditorToolContext
{
    // Tool contexts can also implement an OnToolGUI function that is invoked before tools. This is a good place to
    // add any custom selection logic, for example.
    public override void OnToolGUI(EditorWindow _) { }
    protected override Type GetEditorToolType(Tool tool)
    {
        switch (tool)
        {
            // Return the type of tool to be used for Tool.Move. The Tool Manager will handle instantiating and
            // activating the tool.
            case Tool.Move:
                return typeof(WobblyMoveTool);
            // For any tools that are not implemented, return null to disable the tool in the menu.
            default:
                return null;
        }
    }
}
// Note that tools used by an EditorToolContext do not need to use EditorToolAttribute.
class WobblyMoveTool : EditorTool
{
    struct Selected
    {
        public Transform transform;
        public Vector3 localScale;
    }
    Vector3 m_Origin;
    List<Selected> m_Selected = new List<Selected>();
    void StartMove(Vector3 origin)
    {
        m_Origin = origin;
        m_Selected.Clear();
        foreach(var trs in Selection.transforms)
            m_Selected.Add(new Selected() { transform = trs, localScale = trs.localScale });
        Undo.RecordObjects(Selection.transforms, "Wobble Move Tool");
    }
    // This is silly example that oscillates the scale of the selected objects as they are moved.
    public override void OnToolGUI(EditorWindow _)
    {
        var evt = Event.current.type;
        var hot = GUIUtility.hotControl;
        EditorGUI.BeginChangeCheck();
        var p = Handles.PositionHandle(Tools.handlePosition, Tools.handleRotation);
        if (evt == EventType.MouseDown && hot != GUIUtility.hotControl)
            StartMove(p);
        if (EditorGUI.EndChangeCheck())
        {
            foreach (var selected in m_Selected)
            {
                selected.transform.position += (p - Tools.handlePosition);
                var scale = Vector3.one * (Mathf.Sin(Mathf.Abs(Vector3.Distance(m_Origin, p))) * .5f);
                selected.transform.localScale = selected.localScale + scale;
            }
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| overridesDefaultSelection | Defines if the context is overriding the scene selection. |
| target | The object being inspected. |
| targets | An array of the objects being inspected. |

### Public Methods

| Method | Description |
| --- | --- |
| GetAdditionalToolTypes | Get an additional collection of tools to display in the same category as the built-in transform tools. |
| OnActivated | Invoked after this EditorToolContext becomes the active tool context. |
| OnToolGUI | Implements any common functionality for the set of manipulation tools available for this context. |
| OnWillBeDeactivated | Invoked before this EditorToolContext stops being the active tool context. |
| PopulateMenu | Adds menu items to the Scene view context menu. |
| ResolveTool | Returns the matching EditorTool type for the specified Tool given the context. |

### Protected Methods

| Method | Description |
| --- | --- |
| GetEditorToolType | Defines the EditorTool type for a given Tool. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |
| CreateInstance | Creates an instance of a scriptable object. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |

### Messages

| Message | Description |
| --- | --- |
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
