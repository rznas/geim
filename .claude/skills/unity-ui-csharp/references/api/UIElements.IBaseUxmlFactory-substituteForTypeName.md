<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IBaseUxmlFactory-substituteForTypeName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The type of element for which this element type can substitute for.

Enables the element to appear anywhere the substituteForTypeName element can appear in a UXML document. For example, if an element restricts its children to Button elements (using the uxmlChildElementsDescription property), elements that have substitueForTypeName return `Button` are accepted as children of that element.

 The value of this property is used for the element's substitutionGroup attribute in UXML schema definition.
