<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.CollectionVirtualizationMethod.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options to change the virtualization method used by the collection view to display its content.

### Properties

| Property | Description |
| --- | --- |
| FixedHeight | Collection view won't wait for the layout to update items, as the all have the same height. fixedItemHeight Needs to be set. More performant but less flexible. |
| DynamicHeight | Collection view will use the actual height of every item when geometry changes. More flexible but less performant. |
