<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles-color.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the color of handles. Color is a persistent state and affects any handles drawn after it is set. Use DrawingScope to set the color for a block of handles without affecting the color of other handles.

*White cone that points to 0,0,0.*

```csharp
// Name this script "SliderHandleEditor"
using UnityEngine;
using System.Collections;
using UnityEditor;[CustomEditor(typeof(SliderHandle))]
public class SliderHandleEditor : Editor
{
    // Simple script that creates a Slide Handle that
    // allows you to drag a 'look at' point along the X axis    void OnSceneGUI()
    {
        SliderHandle t = (target as SliderHandle);        // Set the colour of the next handle to be drawn:
        Handles.color = Color.magenta;        EditorGUI.BeginChangeCheck();
        Vector3 lookTarget = Handles.Slider(t.lookTarget, new Vector3(1, 0, 0), 2, Handles.ConeHandleCap, 0.1f);
        if (EditorGUI.EndChangeCheck())
        {
            Undo.RecordObject(target, "Changed Slider Look Target");
            t.lookTarget = lookTarget;
            t.Update();
        }
    }
}
```

And the script attached to this GameObject:

```csharp
// Name this script "SliderHandle"
using UnityEngine;
using System.Collections;[ExecuteInEditMode]
public class SliderHandle : MonoBehaviour
{
    public Vector3 lookTarget = new Vector3(0, 0, 0);    public void Update()
    {
        transform.LookAt(lookTarget);
    }
}
```
