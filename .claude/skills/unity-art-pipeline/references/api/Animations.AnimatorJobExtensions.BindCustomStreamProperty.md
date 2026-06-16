<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorJobExtensions.BindCustomStreamProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animator | The Animator instance that calls this method. |
| name | The name of the property. |
| type | The type of property to create (float, integer or boolean). |

### Returns

**PropertyStreamHandle** Returns the PropertyStreamHandle that represents the new binding.

### Description

Create a custom property in the AnimationStream to pass extra data to downstream animation jobs in your graph. Custom properties created in the AnimationStream do not exist in the scene.

You can create custom properties in the AnimationStream that do not exist in the scene. This can be useful when you want to communicate extra data to downstream animation jobs in your graph.
