<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IFocusEvent-direction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Direction of the focus change. This corresponds to the FocusChangeDirection used by the focus ring.

The IFocusRing implementation determines what focus events are generated as a consequence of other input events. Focus events generally occur after any of the following situations:

- A NavigationMoveEvent
- A PointerDownEvent
- Calling an element's Focusable.Focus or Focusable.Blur methods

The direction of the focus change contains information about the cause of the Focus event. It can be null if the focus change didn't happen as a consequence of another event. 

Additional resources: VisualElementFocusChangeDirection, IFocusRing
