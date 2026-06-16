<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.SaveModifiedScenesIfUserWantsTo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scenes | Scenes that should be saved if they are modified. |

### Returns

**bool** Returns true if the user clicked **Save** or **Don't Save** to indicate that that it is ok to close the input scenes after the dialog closes. Returns false if the user clicked **Cancel** to abort.

### Description

Asks whether the modfied input Scenes should be saved.

In some cases, you might want to call this before opening another Scene or creating a new Scene. A return value of true indicates that you may continue. A return value of false indicates that the user cancelled the operation and you should not Open another Scene.
