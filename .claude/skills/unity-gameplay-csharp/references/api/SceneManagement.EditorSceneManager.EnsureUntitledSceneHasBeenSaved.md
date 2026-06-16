<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.EnsureUntitledSceneHasBeenSaved.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dialogContent | Text shown in the save dialog. |

### Returns

**bool** True if the Scene is saved or if there is no Untitled Scene.

### Description

Shows a save dialog if an Untitled Scene exists in the current Scene manager setup.

Call this method if a process in your Editor code requires that the Untitled Scene is saved. If the user selects Cancel then the process can be aborted. Returns true if the Scene is saved or if there is no Untitled Scene. Returns false if the user cancels the save dialog.
