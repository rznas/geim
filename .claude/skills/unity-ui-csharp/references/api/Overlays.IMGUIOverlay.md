<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.IMGUIOverlay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

IMGUIOverlay is an implementation of Overlay that provides a IMGUIContainer.

Inherit IMGUIOverlay to author Overlay elements implemented using the legacy IMGUI controls.

### Public Methods

| Method | Description |
| --- | --- |
| CreatePanelContent | CreatePanelContent is invoked by the OverlayCanvas when this Overlay is shown. |
| OnGUI | Implement IMGUI controls and logic in this method. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| ussClassName | USS class name of elements of this type. |

### Properties

| Property | Description |
| --- | --- |
| collapsed | Defines whether the overlay is in collapsed form. |
| collapsedIcon | Defines a custom icon to use when that overlay is in collapsed form. |
| containerWindow | EditorWindow the overlay is contained within. |
| defaultSize | Set defaultSize to define the size of an Overlay when it hasn't been resized by the user. |
| displayed | Shows or hides the overlay. |
| displayName | Name of overlay used as title. |
| floating | Returns true if overlay is floating, returns false if overlay is docked in a corner or in a toolbar. |
| floatingPosition | Local position of closest overlay corner to closest dockposition when floating. |
| id | Overlay unique ID. |
| isInToolbar | Returns true if overlay is docked in a toolbar. |
| layout | The preferred layout for the Overlay. |
| maxSize | Maximum size of the Overlay. |
| minSize | Minimum size of the Overlay. |
| rootVisualElement | The root VisualElement. |
| size | Size of the Overlay. |

### Public Methods

| Method | Description |
| --- | --- |
| Close | Remove the Overlay from its OverlayCanvas. |
| CreateContent | Creates a new VisualElement containing the contents of this Overlay. |
| OnCreated | OnCreated is invoked when an Overlay is instantiated in an Overlay Canvas. |
| OnWillBeDestroyed | Called when an Overlay is about to be destroyed. |
| RefreshPopup | Resize the OverlayPopup to fit the content. |
| Undock | If this Overlay is currently in a toolbar, it will be removed and return to a floating state. |

### Events

| Event | Description |
| --- | --- |
| collapsedChanged | Invoked when Overlay.collapsed value is changed. |
| displayedChanged | This callback is invoked when the Overlay.displayed value has been changed. |
| floatingChanged | Called when the value of floating has changed. |
| floatingPositionChanged | This event is invoked when Overlay.floatingPosition is changed. |
| layoutChanged | Subscribe to this event to be notified when the Overlay.Layout property is modified. |
