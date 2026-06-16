<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElementFocusRing-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| root | The root of the element tree for which we want to build a focus ring. |
| dfo | Default ordering of the elements in the ring. |

### Description

Constructor.

Navigation will never focus an element that's not a descendent of the root element. If the root element is not the absolute root of its own visual tree, navigation within the focus ring will wrap around the root element hierarchy when it would otherwise leave it.
