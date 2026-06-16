<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IPanel.Pick.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | Coordinates in panel space. |

### Returns

**VisualElement** The top-most VisualElement overlapping the provided point. Null if none was found.

### Description

Finds the top-most VisualElement overlapping the provided point.

It doesn't return the following:

- Invisible elements
- Elements with display style set to DisplayStyle.None
- Elements with pickingMode set to PickingMode.Ignore

Additional resources: VisualElement.visible, IStyle.display, VisualElement.pickingMode
