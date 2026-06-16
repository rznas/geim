<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement-pickingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines if this element can be the target of pointer events or picked by IPanel.Pick queries.

Elements can not be picked if:

- They are invisible
- Their `style.display` is set to `DisplayStyle.None`

Elements with a picking mode of PickingMode.Ignore never receive the hover pseudo-state. 

Additional resources: VisualElement.visible, IStyle.display
