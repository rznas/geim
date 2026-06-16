<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Actions.EditorAction.OnSceneGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneView | The Scene view that `Actions.EditorAction.OnSceneGUI` is called in. |

### Description

Callback raised when the Scene view calls OnGUI.

Use this method to implement any handles or interactive code. This is equivalent in functionality to EditorTool.OnToolGUI.

```csharp
using System;
using UnityEditor;
using UnityEditor.Actions;
using UnityEditor.Overlays;
using UnityEngine;
using UnityEngine.UIElements;

public class EditorActionSampleOverlay : Overlay
{
    Vector3Field m_Field;

    public Action<Vector3> positionChanged;

    public void SetPosition(Vector3 position)
    {
        m_Field?.SetValueWithoutNotify(position);
    }

    public override VisualElement CreatePanelContent()
    {
        m_Field = new Vector3Field();
        m_Field.RegisterValueChangedCallback((evt) => positionChanged?.Invoke(evt.newValue));
        return m_Field;
    }
}

public class EditorActionSample : EditorAction
{
    [MenuItem("Test/Start Action Sample")]
    static void StartEditorActionSample()
    {
        Start(new EditorActionSample());
    }

    public Vector3 handlePosition = Vector3.zero;

    EditorActionSampleOverlay m_Overlay;

    public EditorActionSample()
    {
        // Create the overlay when the action is created
        m_Overlay = new EditorActionSampleOverlay();
        m_Overlay.SetPosition(handlePosition);
        m_Overlay.positionChanged += (value) => handlePosition = value;
        SceneView.AddOverlayToActiveView(m_Overlay);
        m_Overlay.displayed = true;
    }

    protected override void OnFinish(EditorActionResult result)
    {
        // Remove the overlay when the action is finished
        SceneView.RemoveOverlayFromActiveView(m_Overlay);

        Debug.Log($"Action Finished [{result}] with position: {handlePosition}");
    }

    public override void OnSceneGUI(SceneView sceneView)
    {
        EditorGUI.BeginChangeCheck();
        handlePosition = Handles.PositionHandle(handlePosition, Quaternion.identity);

        if (EditorGUI.EndChangeCheck())
        {
            m_Overlay.SetPosition(handlePosition);
        }
    }
}
```
