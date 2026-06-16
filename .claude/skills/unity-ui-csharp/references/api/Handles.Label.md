<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.Label.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position in 3D space as seen from the current handle camera. |
| text | The text to display on the label. |
| image | The texture to display on the label. |
| content | The text, image, and tooltip for this label. |
| style | The style to use for this label. If left out, the `label` style from the current GUISkin is used. |

### Description

Creates a text label for a handle that is positioned in 3D space.

Labels have no user interaction and canot be clicked on. Labels are always rendered in normal style.


 *Label in the Scene view.*

```csharp
//This script is not an Editor script
//Attach this script to a GameObject in your Sceneusing System.Collections;
using System.Collections.Generic;
using UnityEngine;[ExecuteInEditMode]
public class HandleExample : MonoBehaviour
{
    public float shieldArea = 5.0f;    // Use this for initialization
    void Start()
    {
    }    // Update is called once per frame
    void Update()
    {
    }
}
```

```csharp
//Create a folder named "Editor" in your project directory, if the directroy does not already have one. Place this script in the Editor folder.using UnityEngine;
using System.Collections;
using UnityEditor;// Create a 180 degrees wire arc with a ScaleValueHandle attached to the disc
// lets you visualize some info of the transform[CustomEditor(typeof(HandleExample))]
class LabelHandle : Editor
{
    void OnSceneGUI()
    {
        HandleExample handleExample = (HandleExample)target;
        if (handleExample == null)
        {
            return;
        }        Handles.color = Color.blue;
        Handles.Label(handleExample.transform.position + Vector3.up * 2,
            handleExample.transform.position.ToString() + "\nShieldArea: " +
            handleExample.shieldArea.ToString());        Handles.BeginGUI();
        if (GUILayout.Button("Reset Area", GUILayout.Width(100)))
        {
            handleExample.shieldArea = 5;
        }
        Handles.EndGUI();
        Handles.DrawWireArc(handleExample.transform.position,
            handleExample.transform.up,
            -handleExample.transform.right,
            180,
            handleExample.shieldArea);
        handleExample.shieldArea =
            Handles.ScaleValueHandle(handleExample.shieldArea,
                handleExample.transform.position + handleExample.transform.forward * handleExample.shieldArea,
                handleExample.transform.rotation,
                1,
                Handles.ConeHandleCap,
                1);
    }
}
```
