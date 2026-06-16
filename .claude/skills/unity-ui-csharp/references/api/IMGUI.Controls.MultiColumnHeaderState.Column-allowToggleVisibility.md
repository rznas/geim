<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeaderState.Column-allowToggleVisibility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Option to allow/disallow hiding the column from the context menu.

This state is used by the context menu of the MultiColumnHeader to enable/disable the column names in the menu. Ensure at least one column does not allow to toggle visibility so not all the columns can be hidden. When used with a TreeView it would be a good idea to disallow hiding the column with the TreeView foldout arrows.
