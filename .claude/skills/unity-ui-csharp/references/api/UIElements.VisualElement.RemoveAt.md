<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement.RemoveAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Removes a child, at the provided index, from the list of children of the current element.

Removes the element from both the child list and the layout list. This also removes and invalidates the rendering data of the element at the index and its descendants. As a result, this is an O(n) operation where n is the total number of descendants. 
 
 If the index is out of range, it throws an exception. 
 
 **Note**: Avoid removing an element during a layout pass to prevent invalid operation exceptions and potential side effects.
