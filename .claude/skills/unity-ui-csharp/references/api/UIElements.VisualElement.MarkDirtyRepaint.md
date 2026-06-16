<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement.MarkDirtyRepaint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Marks that the VisualElement requires a repaint.

Don't call this method when you change the styles or properties of built-in controls, as this is automatically called when necessary. However, you might need to call this method when your element has a custom generateVisualContent that needs to be triggered, such as after you change a custom style or property.
