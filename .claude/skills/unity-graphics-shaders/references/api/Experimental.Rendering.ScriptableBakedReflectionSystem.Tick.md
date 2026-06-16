<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.ScriptableBakedReflectionSystem.Tick.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneStateHash | Current Scene state hash. |
| handle | A handle to receive notifications about the status of the stages of the baking process. |

### Description

This method is called during the Editor update until the ScriptableBakedReflectionSystem indicates that the baking is complete, with `handle.SetIsDone(true)`. (See IScriptableBakedReflectionSystemStageNotifier.SetIsDone).

This implementation does nothing.

Override this method in your own implementation to prepare and issue baking jobs if required in your ScriptableBakedReflectionSystem. See IScriptableBakedReflectionSystem.
