<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.CodeEditor.IExternalCodeEditor.SyncAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity calls this function during initialization in order to sync the Project. This is different from SyncIfNeeded in that it does not get a list of changes.

Another workflow where this is used is from the menu "Assets/Open C# Project", which will make a call to this function before a call to OpenProject is made.
