<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IFocusRing.GetNextFocusable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the next element in the given direction.

For example, in a VisualElementFocusRing, the next element in the VisualElementFocusChangeDirection.right by default is the element to the right of the current element. More precisely, the next element is the focusable element whose Focusable.tabIndex is the closest to the current element in increasing order. If no such element is found, the process wraps around and continues looking for a focusable element starting at tabIndex=0 and proceeding in increasing order.

 When the EventDispatcher processes navigation and pointer events, it automatically calls this method to generate Focus events.

 The Focus event's EventBase.target matches the value returned by this method to generate it.
