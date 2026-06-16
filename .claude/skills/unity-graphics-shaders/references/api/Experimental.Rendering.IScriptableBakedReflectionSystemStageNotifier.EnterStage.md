<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.IScriptableBakedReflectionSystemStageNotifier.EnterStage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stage | The current stage in progress. |
| progressMessage | The progress message to display. |
| progress | The progress to report (between 0 and 1). |

### Description

Update the baking stage progress information.

Call this method during the ticking of an ScriptableBakedReflectionSystem. (See IScriptableBakedReflectionSystem.Tick).

The progress will be reported in the status bar in the bottom left of the editor window.
