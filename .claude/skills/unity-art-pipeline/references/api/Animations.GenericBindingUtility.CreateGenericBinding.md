<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GenericBindingUtility.CreateGenericBinding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetObject | The target GameObject to extract the bindings from. |
| property | The name of the property. |
| root | A GameObject ancestor of targetObject. Use the ancestor to locate the targetObject within a transform hierarchy. |
| genericBinding | Returns the GenericBinding representing the property on the GameObject to animate. |
| isObjectReference | Specifies whether the property is an object reference. If you do not identify the property correctly, the method fails. Set this parameter to True if the property references an object. Set to False if the property is a float or an integer. |

### Returns

**bool** Returns True if the operation is successful, otherwise False.

### Description

Retrieves the GenericBinding that represents a specific property associated with a GameObject or one of its components.
