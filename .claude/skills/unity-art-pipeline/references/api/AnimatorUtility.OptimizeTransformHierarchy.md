<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorUtility.OptimizeTransformHierarchy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| go | GameObject to Optimize. |
| exposedTransforms | List of transform name to expose. |

### Description

This function will remove all transform hierarchy under GameObject, the animator will write directly transform matrices into the skin mesh matrices saving many CPU cycles.

You can optionally provide a list of transform name, this function will create a flattened hierarchy of these transform under GameObject.

A call to this function at runtime will re-initialize the animator.

Additional resources: AnimatorUtility.OptimizeTransformHierarchy, Animator.hasTransformHierarchy.
