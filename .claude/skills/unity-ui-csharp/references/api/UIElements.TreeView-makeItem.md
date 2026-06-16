<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TreeView-makeItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback for constructing the VisualElement that is the template for each recycled and re-bound element in the list.

This callback needs to call a function that constructs a blank VisualElement that is bound to an element from the list.

 The collection view automatically creates enough elements to fill the visible area, and adds more if the area is expanded. As the user scrolls, the collection view cycles elements in and out as they appear or disappear.

 If this property and bindItem are not set, Unity will either create a PropertyField if bound to a SerializedProperty, or create an empty label for any other case.
