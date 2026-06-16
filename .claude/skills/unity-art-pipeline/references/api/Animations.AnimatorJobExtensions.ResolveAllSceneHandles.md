<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorJobExtensions.ResolveAllSceneHandles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animator | The Animator instance that calls this method. |

### Description

Newly created handles are always resolved lazily on the next access when the jobs are run. To avoid a cpu spike while evaluating the jobs you can manually resolve all handles from the main thread.
