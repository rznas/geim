<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TreeView-bindItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback for binding a data item to the visual element.

The method called by this callback receives the VisualElement to bind, and the index of the element to bind it to.

 If this property and makeItem are not set, Unity will try to bind to a SerializedProperty if bound, or simply set text in the created Label.

 **Note:**: Setting this callback without also setting unbindItem might result in unexpected behavior. This is because the default implementation of unbindItem expects the default implementation of bindItem.
