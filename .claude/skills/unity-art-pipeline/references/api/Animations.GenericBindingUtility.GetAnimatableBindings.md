<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GenericBindingUtility.GetAnimatableBindings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetObject | The target GameObject to extract the bindings from. |
| root | A GameObject ancestor of targetObject. Use the ancestor to locate the targetObject within a transform hierarchy. |

### Returns

**GenericBinding[]** Returns an array of GenericBinding. Returns an empty array if the targetObject has no animatable properties.

### Description

Retrieves the animatable bindings for a specific GameObject.
