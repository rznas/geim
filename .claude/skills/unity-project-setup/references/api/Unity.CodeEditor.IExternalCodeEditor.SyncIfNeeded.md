<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.CodeEditor.IExternalCodeEditor.SyncIfNeeded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| addedFiles | Added files through Unity's UI. |
| movedFiles | Files that was added but has been moved. |
| movedFromFiles | Same list as movedFiles, but contains the location of where these was moved from. |
| importedFiles | Imported files, which were not added through Unity's UI. |

### Description

When you change Assets in Unity, this method for the current chosen instance of IExternalCodeEditor parses the new and changed Assets.
