<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BaseVerticalCollectionView-virtualizationMethod.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The virtualization method to use for this collection when a scroll bar is visible. Takes a value from the CollectionVirtualizationMethod enum.

The default value is `FixedHeight`. When using fixed height, specify the fixedItemHeight property. Fixed height is more performant but offers less flexibility on content. When using `DynamicHeight`, the collection will wait for the actual height to be computed. Dynamic height is more flexible but less performant.
