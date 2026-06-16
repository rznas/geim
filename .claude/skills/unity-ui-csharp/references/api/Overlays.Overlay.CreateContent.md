<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.Overlay.CreateContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| requestedLayout | The layout that contents should be styled to match. |

### Returns

**VisualElement** A new Visual Element containing the contents of the Overlay.

### Description

Creates a new VisualElement containing the contents of this Overlay.

If the requestedLayout cannot be used, then the system uses another layout. If the layout is not able to be created, the default Panel layout content is returned.
