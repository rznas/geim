<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransform.SetInsetAndSizeFromParentEdge.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| edge | The edge of the parent rectangle to inset from. |
| inset | The inset distance. |
| size | The size of the rectangle along the same direction of the inset. |

### Description

Set the distance of this rectangle relative to a specified edge of the parent rectangle, while also setting its size.

Calling this method sets both the anchors, anchoredPosition, and sizeDelta, though only either the horizontal or vertical components, depending on which edge is specified for the inset.

The method can particularly be useful when scripting layout behaviours, since it makes it simple to specify positions relative to the parent edges without needing to be concerned with anchoring functionality.
