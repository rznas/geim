<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Actions.EditorAction.OnFinish.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| result | The state that the EditorAction was finished in. |

### Description

Callback raised when the EditorAction is finished.

This function is responsible for finalizing and cleaning up any state created by the EditorAction. 

When the EditorActionResult is cancelled, remove any created artifacts from the scene. When the result is EditorActionResult.Success, clean up any temporary resources and commit the finalized objects to the scene.
