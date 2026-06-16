<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.OverlayCanvas.Remove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| overlay | The Overlay to remove. |

### Returns

**bool** Returns true if Overlay was found and removed, false if Overlay was not present in OverlayCanvas.

### Description

Remove an Overlay from this canvas. Removed Overlays are disassociated from OverlayCanvas and the related EditorWindow, but not destroyed. This means you are able to move a single Overlay between multiple windows.

An Overlay may only belong to a single OverlayCanvas. To display an Overlay in multiple windows, you must instantiate an Overlay for each window.
