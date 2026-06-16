<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.OverlayCanvas.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OverlayCanvas is a container for collections of Overlays.

Every EditorWindow has an OverlayCanvas, but only windows that opt-in to Overlay support will display Overlays. See ISupportsOverlays for more information.

### Properties

| Property | Description |
| --- | --- |
| overlays | The Overlays in this canvas. |
| overlaysEnabled | Returns true if overlays display in the window, or false if overlays are hidden. |

### Public Methods

| Method | Description |
| --- | --- |
| Add | Add an Overlay to this canvas. Added Overlays will be displayed in the associated EditorWindow until they are removed. |
| OnAfterDeserialize | Invoked after OverlayCanvas is deserialized. |
| OnBeforeSerialize | Invoked before OverlayCanvas will be serialized. This is used to store Overlay layout data. |
| Remove | Remove an Overlay from this canvas. Removed Overlays are disassociated from OverlayCanvas and the related EditorWindow, but not destroyed. This means you are able to move a single Overlay between multiple windows. |
| ResetOverlay | Resets the overlay to its default state. |
| RestoreOverlay | Restores Overlay state according to the data parameter. |
| ShowPopup | Displays an overlay as a pop-up in a EditorWindow. |
| ShowPopupAtMouse | Displays an overlay as a pop-up in a EditorWindow at the mouse position. |
