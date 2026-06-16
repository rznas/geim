<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.OnSceneGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables the Editor to handle an event in the Scene view.

In the OnSceneGUI you can, for example, edit meshes, paint terrain, or have advanced gizmos. Refer to the Handles class for methods related to drawing interactable visuals in the SceneView.

 If you want to draw elements in the Scene view, for instance by using `Graphics.DrawMeshNow`, only do so during EventType.Repaint. 

In the following two scripts, OnSceneGUI is used to draw lines between GameObjects. The first script shows how OnSceneGUI is used. In this script, a GameObject is used as a parent. The script obtains the position of the parent and then draws lines from that position to GameObjects stored in an array. The script uses Handles.DrawLine to draw lines. The documentation for Handles.DrawLine has a very similar example.

```csharp
using UnityEngine;
using UnityEditor;[CustomEditor( typeof( DrawLine ) )]
public class DrawLineEditor : Editor
{
    // Draw lines between a chosen GameObject
    // and a selection of added GameObjects    void OnSceneGUI()
    {
        // Get the chosen GameObject
        DrawLine t = target as DrawLine;        if( t == null || t.GameObjects == null )
            return;        // Grab the center of the parent
        Vector3 center = t.transform.position;        // Iterate over GameObject added to the array...
        for( int i = 0; i < t.GameObjects.Length; i++ )
        {
            // ... and draw a line between them
            if( t.GameObjects[i] != null )
                Handles.DrawLine( center, t.GameObjects[i].transform.position );
        }
    }
}
```

This script stores the array of GameObjects which have a line drawn to them. This regular script is attached to a GameObject which is considered to be the starting point for all lines.

```csharp
using UnityEngine;[ExecuteInEditMode]
public class DrawLine : MonoBehaviour
{
    // an array of game objects which will have a
    // line drawn to in the Scene editor
    public GameObject[] GameObjects;
}
```
