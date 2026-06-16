<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElementStyleSheetSet.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This structure manipulates the set of StyleSheet objects attached to the owner VisualElement.

VisualElementStyleSheetSet instances can't be created directly. Use the VisualElement.styleSheets property accessor to work with the style sheets of an element.

### Properties

| Property | Description |
| --- | --- |
| count | Number of style sheets attached to the owner element. |
| this[int] | Reads the value at the specified index in the list of StyleSheet objects attached of the element |

### Public Methods

| Method | Description |
| --- | --- |
| Add | Adds a style sheet for the owner element. |
| Clear | Removes all style sheets for the owner element. |
| Contains | Looks for the specified StyleSheet |
| Equals | Compares instances of the VisualElementStyleSheetSet struct for equality. |
| Insert | Adds a style sheet for the owner element at a specified index |
| Remove | Removes a style sheet for the owner element. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Compares instances of the VisualElementStyleSheetSet struct for inequality. |
| operator == | Compares instances of the VisualElementStyleSheetSet struct for equality. |
