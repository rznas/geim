<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BaseVerticalCollectionView-fixedItemHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The height of a single item in the list, in pixels.

This property must be set when using the virtualizationMethod is set to `FixedHeight`, for the collection view to function. If set when virtualizationMethod is `DynamicHeight`, it serves as the default height to help calculate the number of items necessary and the scrollable area, before items are laid out. It should be set to the minimum expected height of an item.
