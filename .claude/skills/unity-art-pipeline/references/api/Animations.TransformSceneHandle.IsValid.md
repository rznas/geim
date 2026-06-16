<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.TransformSceneHandle.IsValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The AnimationStream that manages this handle. |

### Returns

**bool** Whether this is a valid handle.

### Description

Returns whether this is a valid handle.

A TransformSceneHandle may be invalid if, for example, the transform binded to this handle is deleted or if you didn't use the correct function to create it.

Additional resources: AnimatorJobExtensions.BindSceneTransform.
