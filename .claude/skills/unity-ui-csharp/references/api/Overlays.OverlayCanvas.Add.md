<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.OverlayCanvas.Add.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| overlay | The Overlay to add. |
| show | True to display the Overlay immediately, false to add without displaying. |

### Description

Add an Overlay to this canvas. Added Overlays will be displayed in the associated EditorWindow until they are removed.

In most cases, Overlays are instantiated automatically using OverlayAttribute. However, it is also possible to add and remove Overlays from an OverlayCanvas directly. This is useful for short-lived Overlays that require some context. E.g., as an extension of an Editor.

Overlays added using this method must implement ITransientOverlay. An Overlay may only belong to a single OverlayCanvas. To display an Overlay in multiple windows, you must instantiate an Overlay for each window.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEditor.Overlays;
using UnityEngine.UIElements;// Attach this MonoBehaviour to a GameObject to view the example Overlay in the last active Scene View
class OverlayCanvasExample : MonoBehaviour {}// An Editor for our OverlayCanvasExample MonoBehaviour. This will show and hide the example Overlay when a GameObject
// with the OverlayCanvasExample component is selected and deselected.
[CustomEditor(typeof(OverlayCanvasExample))]
class OverlayCanvasExampleEditor : UnityEditor.Editor
{
    ExampleEditorOverlay m_Overlay;    void OnEnable()
    {
        // Create a new Overlay with a label indicating the selected GameObject name.
        m_Overlay = new ExampleEditorOverlay(name);
        SceneView.lastActiveSceneView.overlayCanvas.Add(m_Overlay);
    }    void OnDisable()
    {
        // If the Overlay has not already been closed, close it when this editor is disabled. Added Overlays will
        // persist until they are closed.
        m_Overlay?.Close();
    }
}class ExampleEditorOverlay : Overlay, ITransientOverlay
{
    // Overlays added directly to the canvas must implement ITransientOverlay, meaning they control their own lifecycle.
    public bool visible => true;    string m_Message;    public ExampleEditorOverlay(string message)
    {
        m_Message = message;
    }    public override VisualElement CreatePanelContent()
    {
        var root = new VisualElement();
        root.Add(new Label(m_Message));
        root.Add(new Button(Close) { text = "Close" });
        return root;
    }
}
```
