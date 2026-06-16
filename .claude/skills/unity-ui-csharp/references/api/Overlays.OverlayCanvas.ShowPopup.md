<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.OverlayCanvas.ShowPopup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The GUI position relative to the window. |

### Description

Displays an overlay as a pop-up in a EditorWindow.

```csharp
using UnityEditor;
using UnityEditor.Overlays;
using UnityEditor.ShortcutManagement;
using UnityEngine;
using UnityEngine.UIElements;

class PopUpOnlyOverlay : Overlay
{
    public PopUpOnlyOverlay()
    {
        displayName = "Pop Me Up";
    }

    public override VisualElement CreatePanelContent()
    {
        return new Label("I'm a pop-up overlay!");
    }

    [Shortcut("PopUpOnlyOverlayExample/Pop Up Overlay",typeof(SceneView), KeyCode.P, ShortcutModifiers.Shift)]
    static void ShowOverlay(ShortcutArguments args)
    {
        var window = args.context as EditorWindow;
        if (window is ISupportsOverlays)
            window.overlayCanvas.ShowPopup<PopUpOnlyOverlay>();
    }
}
.
```
