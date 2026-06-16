<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TreeView-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a TreeView with all default properties.

Use BaseTreeView.SetRootItems_1 to add content.

### Parameters

| Parameter | Description |
| --- | --- |
| makeItem | The factory method to call to create a display item. The method should return a VisualElement that can be bound to a data item. |
| bindItem | The method to call to bind a data item to a display item. The method receives as parameters the display item to bind, and the index of the data item to bind it to. |

### Description

Creates a TreeView with specified factory methods.

Use BaseTreeView.SetRootItems_1 to add content.

### Parameters

| Parameter | Description |
| --- | --- |
| itemHeight | The item height to use in FixedHeight virtualization mode. |
| makeItem | The factory method to call to create a display item. The method should return a VisualElement that can be bound to a data item. |
| bindItem | The method to call to bind a data item to a display item. The method receives as parameters the display item to bind, and the index of the data item to bind it to. |

### Description

Creates a TreeView with specified factory methods using the fixed height virtualization method.

Use BaseTreeView.SetRootItems_1 to add content.
