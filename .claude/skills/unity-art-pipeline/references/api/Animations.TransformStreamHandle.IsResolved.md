<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.TransformStreamHandle.IsResolved.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The AnimationStream that holds the animated values. |

### Returns

**bool** Returns `true` if the handle is resolved, `false` otherwise.

### Description

Returns whether this handle is resolved.

A TransformStreamHandle is resolved if it is valid, if it has the same bindings version than the one in the stream, and if it is bound to the transform in the stream. A TransformStreamHandle can become unresolved if the animator bindings have changed or if the transform had been destroyed.

Additional resources: Resolve, and IsValid.
