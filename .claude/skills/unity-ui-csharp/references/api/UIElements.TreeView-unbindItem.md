<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TreeView-unbindItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback for unbinding a data item from the VisualElement.

The method called by this callback receives the VisualElement to unbind, and the index of the element to unbind it from.

 **Note:**: Setting this callback without also setting bindItem might cause unexpected behavior. This is because the default implementation of bindItem expects the default implementation of unbindItem.
