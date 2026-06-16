<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Foldout.SetValueWithoutNotify.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| newValue | The new value of the foldout |

### Description

Sets the value of the Foldout's Toggle sub-element, but does not notify the rest of the hierarchy of the change.

This is useful when you want to change the Foldout's Toggle value without triggering events. For example, let's say you set up a Foldout to trigger an animation, but you only want to trigger the animation when a user clicks the Foldout's Toggle, not when you change the Toggle's value via code (for example, inside another validation). You could use this method change the value "silently".
