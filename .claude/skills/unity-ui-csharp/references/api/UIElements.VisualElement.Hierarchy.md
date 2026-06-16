<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement.Hierarchy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Hierarchy is a struct allowing access to the hierarchy of visual elements

### Properties

| Property | Description |
| --- | --- |
| childCount | Number of child elements in this object's contentContainer |
| parent | The physical parent of this element in the hierarchy. |
| this[int] | Returns the element at the specified index in the hierarchy |

### Public Methods

| Method | Description |
| --- | --- |
| Add | Add an element to this element's contentContainer |
| Children | Returns the physical children of the element. |
| Clear | Remove all child elements from this element's contentContainer |
| ElementAt | Retrieves the child element at position |
| Equals | Compares instances of the Hierarchy struct for equality. |
| IndexOf | Retrieves the index of the specified VisualElement in the Hierarchy. |
| Insert | Insert an element into this element's contentContainer |
| Remove | Removes this child from the hierarchy. |
| RemoveAt | Removes a child, at the provided index, from the contentContainer of the current element. |
| Sort | Reorders child elements from this VisualElement contentContainer. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Compares instances of the Hierarchy struct for inequality. |
| operator == | Compares instances of the Hierarchy struct for equality. |
