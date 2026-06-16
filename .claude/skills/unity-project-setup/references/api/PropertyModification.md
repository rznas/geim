<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PropertyModification.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines a single modified property.

Used by the Prefab system to track any changes applied to an instance.

### Properties

| Property | Description |
| --- | --- |
| objectReference | The value being applied when it is an object reference (which can not be represented as a string). |
| propertyPath | Property path of the property being modified (Matches as SerializedProperty.propertyPath). |
| target | The object whose serialized property is being modified. |
| value | String form of the value being applied for non-object-reference properties. |
