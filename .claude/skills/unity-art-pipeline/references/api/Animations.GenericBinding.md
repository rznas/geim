<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GenericBinding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines an animatable property on a Unity Component.

GenericBinding and BoundProperty are classes for animating properties on objects in a completely generic way.

See also GenericBindingUtility.

### Properties

| Property | Description |
| --- | --- |
| customTypeID | The internal ID for custom animation bindings. |
| isDiscrete | This property is true when the GenericBinding target is an animatable public integer. |
| isObjectReference | This property is True when this GenericBinding target is an animatable Unity object reference, such as a sprite. |
| isSerializeReference | This property is True when this GenericBinding target is a serialized reference property. |
| propertyNameHash | Hash ID that represents the name of the property. |
| scriptEntityId | The EntityId of the script. |
| transformPathHash | Hash ID that represents the transform path. Use this property to locate the component in the transform hierarchy. |
| typeID | The Unity component type ID. |
