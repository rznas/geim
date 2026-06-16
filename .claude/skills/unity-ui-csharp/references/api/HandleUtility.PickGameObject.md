<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.PickGameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| selectPrefabRoot | Select Prefab. |
| materialIndex | Returns index into material array of the Renderer component that is closest to specified position. |
| position | A position in screen coordinates. The top-left of the window is (0,0), and the bottom-right is (Screen.width, Screen.height). |
| ignore | An array of GameObjects that will not be considered when selecting the nearest GameObject. |
| filter | An array of GameObjects to be exclusively considered for selection. If null, all GameObjects in open scenes are eligible for selection. |
| selection | An array of GameObjects to be exclusively considered for selection. If null, all GameObjects in open scenes are eligible for selection. |

### Returns

**GameObject** The GameObject that is under the requested position.

### Description

Pick game object closest to specified position.

HandleUtility.PickGameObject must not be called during a repaint. In most cases it is appropriate to call during EventType.MouseDown or EventType.MouseUp.

```csharp
using UnityEditor;
using UnityEngine;static class ShowHovered
{
    static GameObject m_LastHoveredObject, m_LastClickedObject;    [InitializeOnLoadMethod]
    static void Init()
    {
        SceneView.duringSceneGui += OnSceneGUI;
    }    static void OnSceneGUI(SceneView view)
    {
        var evt = Event.current;        // Register a control so that if no other handle is engaged, we can use the event.
        var pickingControlId = GUIUtility.GetControlID(FocusType.Passive);
        HandleUtility.AddDefaultControl(pickingControlId);        switch (evt.type)
        {
            case EventType.MouseMove:
            {
                var picked = HandleUtility.PickGameObject(evt.mousePosition, false);                if (picked != m_LastHoveredObject)
                {
                    m_LastHoveredObject = picked;
                    SceneView.RepaintAll();
                }                break;
            }            case EventType.MouseDown:
            {
                // Make sure to check Tools.viewToolActive before consuming a mouse event, otherwise Scene navigation
                // controls will not work.
                if (!Tools.viewToolActive && HandleUtility.nearestControl == pickingControlId)
                {
                    GUIUtility.hotControl = pickingControlId;
                    evt.Use();
                }                break;
            }            case EventType.MouseUp:
            {
                // If the hotControl is not pickingControlId, that means another control has the rights to this event.
                if (GUIUtility.hotControl != pickingControlId)
                    return;                var picked = HandleUtility.PickGameObject(evt.mousePosition, false);                if (picked != m_LastClickedObject)
                {
                    m_LastClickedObject = picked;
                    SceneView.RepaintAll();
                }                // Make sure to Use() and reset the hotControl the event if we are the active control ID.
                evt.Use();
                GUIUtility.hotControl = 0;
                break;
            }
        }        Handles.BeginGUI();
        GUILayout.BeginVertical(EditorStyles.helpBox, GUILayout.ExpandWidth(false));
        GUILayout.Label($"Last Hovered Object: {m_LastHoveredObject}");
        GUILayout.Label($"Last Clicked Object: {m_LastClickedObject}");
        GUILayout.EndVertical();
        Handles.EndGUI();
    }
}
```
