<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GenericBindingUtility.BindProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rootGameObject | The root GameObject. |
| genericBindings | The list of GenericBinding to bind. See GenericBindingUtility.GetAnimatableBindings, GenericBindingUtility.GetCurveBindings. |
| floatProperties | Returns the list of float bound properties for all valid generic binding. If there is an invalid binding, this param returns BoundProperty.Null. |
| discreteProperties | Returns the list of discrete bound properties for all valid generic bindings. If there is an invalid binding, this param returns BoundProperty.Null |
| allocator | Allocator for allocating NativeArray memory. |

### Description

Retrieves the list of BoundProperty defined by the list of GenericBinding.

BoundProperty allocates resources that must be unallocated. See GenericBindingUtility.UnbindProperties.

This method throws an ArgumentException if the genericBindings NativeArray is not created.
