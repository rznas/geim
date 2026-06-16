<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-isTemporaryProject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if the current project was created as a temporary project.

A temporary project is one that was created using the "-temporary" command line argument. It is located in a temporary location in the filesystem (e.g. the user's TEMP or TMPDIR folder), and when closing the project the user will be prompted to select a permanent location for the project that it will be moved to.

Additional resources: EditorApplication.SetTemporaryProjectKeepPath.
