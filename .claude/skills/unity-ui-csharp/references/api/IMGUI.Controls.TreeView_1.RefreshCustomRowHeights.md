<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.RefreshCustomRowHeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Refreshes the cache of custom row rects based on the heights returned by GetCustomRowHeight.

This method calls GetCustomRowHeight for each of the current rows and caches the results. It is called automatically by the TreeView after BuildRows is called to ensure heights are in sync with the rows. Calling this method manually is needed when row heights changes dynamically e.g after a user action changes the content of a row.
