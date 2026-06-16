<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Focusable-delegatesFocus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the element delegates the focus to its children.

If the element delegates its focus, when it becomes focused, one of its child or recursive child elements is selected to receive focus in its place. 
 The element that receives the focus cannot be chosen manually. Instead, it's determined automatically using a set of rules.

 The chosen element will be the first child or recursive child that

- can be focused,
- does not delegate its own focus,
- is not the child or recursive child of a content container or of another element that delegates focus, and
- is part of the focus ring navigation sequence.

For more information, refer to Focus system in UI Toolkit. 

Additional resources: VisualElement.contentContainer, IFocusRing
