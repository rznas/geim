<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Focusable-canGrabFocus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the element can be focused.

Returns true if the element meets all the following conditions:

- It's focusable.
- It's enabled.
- It's visible.
- It's display style isn't DisplayStyle.None.
- It has a parent that delegates focus, and the parent must also meet these conditions.

For more information, refer to Focus system in UI Toolkit. 

Additional resources: IStyle.display, Focusable.Focus
