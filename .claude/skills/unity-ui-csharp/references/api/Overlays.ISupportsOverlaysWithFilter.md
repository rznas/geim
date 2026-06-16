<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.ISupportsOverlaysWithFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for enabling and filtering out specific overlays in the EditorWindow.

When ISupportsOverlaysWithFilter is implemented, an Overlay Canvas is automatically added to the VisualElement tree for your EditorWindow. Use the OverlayAttribute to specify this window type as a valid target for registering an Overlay. 

 ISupportsOverlaysWithFilter.IsOverlaySupported can specify which overlay is allowed in that specific window from the overlays that are registered with OverlayAttribute.

 Additional resources: ISupportsOverlays

```csharp
using System;
using UnityEditor;
using UnityEditor.Overlays;
using UnityEngine;
using UnityEngine.UIElements;

class EditorWindowOverlayExample : EditorWindow, ISupportsOverlays
{
    [MenuItem("Window/Overlay Supported Window Example")]
    static void Init() => GetWindow<EditorWindowOverlayExample>();

    void OnGUI()
    {
        GUILayout.Label("Here is some text");
        GUILayout.FlexibleSpace();
        GUILayout.Label("Plus some more text, but on the bottom of the screen.");
    }
}

[Overlay(typeof(EditorWindowOverlayExample), "Is Mouse Hovering Me?", true)]
class IsMouseHoveringMe : Overlay
{
    Label m_MouseLabel;

    public override VisualElement CreatePanelContent()
    {
        m_MouseLabel = new Label();
        m_MouseLabel.style.minHeight = 40;
        m_MouseLabel.RegisterCallback<MouseEnterEvent>(evt => m_MouseLabel.text = "Mouse is hovering this Overlay content!");
        m_MouseLabel.RegisterCallback<MouseLeaveEvent>(evt => m_MouseLabel.text = "Mouse is not hovering this Overlay content.");
        return m_MouseLabel;
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| IsOverlaySupported | Implement this function to filter overlays that are added to this window. |
