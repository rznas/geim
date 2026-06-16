<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.OverlayAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Defines the unique identifier used to identify the overlay. |
| ussName | Name of the overlay's root visual element. |
| editorWindowType | Defines which EditorWindow type the overlay will be used in. |
| displayName | Defines what the display name of the overlay will be. |
| defaultDisplay | True if this Overlay is enabled by default in new windows. |

### Description

Attribute used to register a class as an Overlay.

Overlays are not directly instantiated in code. The Editor will use reflection on startup to identify Overlay classes with an OverlayAttribute to populate the available Overlays in an Editor Window.
