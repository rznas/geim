<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.ISupportsOverlaysWithFilter.IsOverlaySupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| overlay | The ID of the overlay the system is trying to add to the window. |

### Returns

**bool** True if the overlay should be added to the window. False if it should be skipped.

### Description

Implement this function to filter overlays that are added to this window.

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
