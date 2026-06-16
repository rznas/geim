<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.IScriptableBakedReflectionSystem.Tick.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneStateHash | Current Scene state hash. |
| handle | A handle to receive notifications about the status of the stages of the baking process. |

### Description

This method is called every Editor update until the ScriptableBakedReflectionSystem indicates that the baking is complete, with `handle.SetIsDone(true)`. (See IScriptableBakedReflectionSystemStageNotifier.SetIsDone).

You should use this to check if a bake is required by comparing the provided hashes (or your own hashes) with the baked data.

If you detect any changes, then this is the place to prepare and launch baking jobs. While the jobs are running, you can indicate their progress with the `handle.EnterStage(stage, progressMessage, progress)` call. See IScriptableBakedReflectionSystemStageNotifier.EnterStage.

See IScriptableBakedReflectionSystem for examples.
