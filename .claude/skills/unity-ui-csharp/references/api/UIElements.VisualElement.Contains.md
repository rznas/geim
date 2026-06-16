<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement.Contains.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| child | The child element to test against. |

### Returns

**bool** Returns true if this element is a ancestor of the child element, false otherwise.

### Description

Checks if this element is an ancestor of the specified child element.

This method "walks up" the hierarchy of the child element until it reaches this element or the root of the visual tree.
