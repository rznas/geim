<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.PropertySceneHandle.IsResolved.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The AnimationStream managing this handle. |

### Returns

**bool** Returns `true` if the handle is resolved, `false` otherwise.

### Description

Returns whether or not the handle is resolved.

A PropertySceneHandle is resolved if it is valid, and if it is bound to the property. A PropertySceneHandle can become unresolved if the property doesn't exist anymore (e.g. the component has been removed).

Additional resources: Resolve, and IsValid.
