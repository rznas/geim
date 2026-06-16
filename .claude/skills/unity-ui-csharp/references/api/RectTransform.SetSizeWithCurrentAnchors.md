<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransform.SetSizeWithCurrentAnchors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| axis | The axis to specify the size along. |
| size | The desired size along the specified axis. |

### Description

Makes the RectTransform calculated rect be a given size on the specified axis.

This method produces the given size with the current anchoring. If the parent RectTransform changes size, the size of the rect may change. If the size is meant to stay, either the RectTransform anchors should be set not to stretch, or this method should be invoked again whenever the parent size changes.
