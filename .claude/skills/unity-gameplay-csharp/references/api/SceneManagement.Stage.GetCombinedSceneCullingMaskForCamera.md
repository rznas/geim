<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.Stage.GetCombinedSceneCullingMaskForCamera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**ulong** The combined Scene culling mask for this Stage. Unity uses this mask on the Scene view Camera for renderer filtering.

### Description

Gets the Scene culling mask from this Stage.

Depending on the currently open Stages, this can either be a Scene culling mask from a single Scene or a combined Scene culling mask from multiple Scenes. Unity uses the mask that this function returns on the Scene view Camera for renderer filtering.
