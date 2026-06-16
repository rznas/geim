<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.PrimitiveBoundsHandle.DrawHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A function to display this instance in the current handle camera using its current configuration.

Always write properties to the handle before calling this function. Place the calls to this function inside EditorGUI.BeginChangeCheck and EditorGUI.EndChangeCheck to detect user interaction and read the updated properties from the handle.
 
 The following component defines an object with a Bounds property.

```csharp
using UnityEngine;public class BoundsExample : MonoBehaviour
{
    public Bounds bounds { get { return m_Bounds; } set { m_Bounds = value; } }
    [SerializeField]
    private Bounds m_Bounds = new Bounds(Vector3.zero, Vector3.one);
}
```

The following Custom Editor allows the user to edit the bounds property for this component in the Scene view.

```csharp
using UnityEditor;
using UnityEditor.IMGUI.Controls;
using UnityEngine;[CustomEditor(typeof(BoundsExample)), CanEditMultipleObjects]
public class BoundsExampleEditor : Editor
{
    private BoxBoundsHandle m_BoundsHandle = new BoxBoundsHandle();    // the OnSceneGUI callback uses the Scene view camera for drawing handles by default
    protected virtual void OnSceneGUI()
    {
        BoundsExample boundsExample = (BoundsExample)target;        // copy the target object's data to the handle
        m_BoundsHandle.center = boundsExample.bounds.center;
        m_BoundsHandle.size = boundsExample.bounds.size;        // draw the handle
        EditorGUI.BeginChangeCheck();
        m_BoundsHandle.DrawHandle();
        if (EditorGUI.EndChangeCheck())
        {
            // record the target object before setting new values so changes can be undone/redone
            Undo.RecordObject(boundsExample, "Change Bounds");            // copy the handle's updated data back to the target object
            Bounds newBounds = new Bounds();
            newBounds.center = m_BoundsHandle.center;
            newBounds.size = m_BoundsHandle.size;
            boundsExample.bounds = newBounds;
        }
    }
}
```

Additional resources: Editor.OnSceneGUI, Handles.SetCamera.
