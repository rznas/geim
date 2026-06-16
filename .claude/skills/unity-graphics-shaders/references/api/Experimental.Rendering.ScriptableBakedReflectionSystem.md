<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.ScriptableBakedReflectionSystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Empty implementation of IScriptableBakedReflectionSystem.

Use this class as a base class and override its methods to implement your own ScriptableBakedReflectionSystem.

### Properties

| Property | Description |
| --- | --- |
| stageCount | Number of stages of the baking process. |
| stateHashes | The hashes of the current baked state of the ScriptableBakedReflectionSystem. |

### Public Methods

| Method | Description |
| --- | --- |
| BakeAllReflectionProbes | Implement this method to bake all of the loaded reflection probes. |
| Cancel | Cancel the running bake jobs. |
| Clear | Clear the state of ScriptableBakedReflectionSystem. |
| SynchronizeReflectionProbes | Synchronize the baked data with the actual components and rendering settings. |
| Tick | This method is called during the Editor update until the ScriptableBakedReflectionSystem indicates that the baking is complete, with handle.SetIsDone(true). (See IScriptableBakedReflectionSystemStageNotifier.SetIsDone). |
