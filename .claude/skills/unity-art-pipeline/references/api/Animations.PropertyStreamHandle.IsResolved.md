<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.PropertyStreamHandle.IsResolved.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The AnimationStream that holds the animated values. |

### Returns

**bool** Returns `true` if the handle is resolved, `false` otherwise.

### Description

Returns whether or not the handle is resolved.

A PropertyStreamHandle is resolved if it is valid, if it has the same bindings version than the one in the stream, and if it is bound to the property in the stream. A PropertyStreamHandle can become unresolved if the animator bindings have changed or if the property doesn't exist anymore (e.g. the component has been removed).

Additional resources: Resolve, and IsValid.
