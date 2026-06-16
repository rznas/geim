<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.CodeEditor.IExternalCodeEditor.Installations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provide the editor with a list of known and supported editors that this instance supports.

This gets called multiple times through execution and is not expected to be persistent. For example, after calling TryGetInstallationForPath this class may realize that you have added a custom code editor.
