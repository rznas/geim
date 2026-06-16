<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.OverlayAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to register a class as an overlay.

Overlay must derive from the Overlay class.

### Properties

| Property | Description |
| --- | --- |
| defaultDisplay | Whether the target Overlay is shown when a new instance of the EditorWindow type is instantiated. |
| defaultDockIndex | Sets the defaultDockIndex to define where in a DockZone an Overlay is placed. |
| defaultDockPosition | Sets the default alignment for a new Overlay instance. |
| defaultDockZone | Sets the default location of an Overlay in an EditorWindow. |
| defaultHeight | Sets the default height of an Overlay. |
| defaultLayout | Sets the default Layout for an Overlay when it is created for the first time. |
| defaultWidth | Sets the default width of an Overlay. |
| displayName | Defines the display name of the overlay. |
| editorWindowType | Defines which EditorWindow type the overlay is used in. |
| group | The name of the group this overlay menu belongs to. |
| id | Defines the unique identifier used to identify the overlay. |
| maxHeight | Sets the maximum height of an Overlay. |
| maxWidth | Sets the maximum width of an Overlay. |
| minHeight | Sets the minimum height of an Overlay. |
| minWidth | Sets the minimum width of an Overlay. |
| priority | Sets the order that overlays are displayed in the overlay menu. The default value is 100. Lower values are displayed before higher values. |
| ussName | Name of the overlay's root visual element. |

### Constructors

| Constructor | Description |
| --- | --- |
| OverlayAttribute | Attribute used to register a class as an Overlay. |
