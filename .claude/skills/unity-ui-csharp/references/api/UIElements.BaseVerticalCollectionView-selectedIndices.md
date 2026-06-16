<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BaseVerticalCollectionView-selectedIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the indices of selected items in the data source. Always returns an enumerable, even if no item is selected, or a single item is selected.

In a tree, if a child item is collapsed, its index is not included in the selection. To get selected items regardless of whether they are collapsed or not, use selectedIds instead.
