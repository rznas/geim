<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.PropertyStreamHandle.Resolve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The AnimationStream that holds the animated values. |

### Description

Resolves the handle.

Handles are lazily resolved as they're accessed, but in order to prevent unwanted CPU spikes, this method allows to resolve handles in a deterministic way. Additional resources: IsResolved, AnimatorJobExtensions.ResolveAllStreamHandles.
