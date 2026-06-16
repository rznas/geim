<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement-parent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The parent of this VisualElement.

Unlike the Hierarchy.parent property, this property reflects for logical hierarchy. For example, if you add an element to a ScrollView, the logical parent of this element is the ScrollView itself, whereas the physical parent returned by the Hierarchy.parent property returns a child of ScrollView which acts as the parent of your element.
