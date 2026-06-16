<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BaseVerticalCollectionView-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a BaseVerticalCollectionView with all default properties. The BaseVerticalCollectionView.itemsSource must all be set for the BaseVerticalCollectionView to function properly.

### Parameters

| Parameter | Description |
| --- | --- |
| itemsSource | The list of items to use as a data source. |
| itemHeight | The height of each item, in pixels. For `FixedHeight` virtualization only. |

### Description

Constructs a BaseVerticalCollectionView, with all required properties provided.

### Parameters

| Parameter | Description |
| --- | --- |
| itemsSource | The list of items to use as a data source. |
| itemHeight | The height of each item, in pixels. For `FixedHeight` virtualization only. |
| makeItem | The factory method to call to create a display item. The method should return a VisualElement that can be bound to a data item. |
| bindItem | The method to call to bind a data item to a display item. The method receives as parameters the display item to bind, and the index of the data item to bind it to. |

### Description

Obsolete. Use ListView or TreeView constructor directly.
