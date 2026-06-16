<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModifiableMassProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mass-related modifiable properties of a contact pair.

Mostly useful to make a collider appear lighter to the solver than it actually is when the bodies in this contact pair have very different mass values.

### Properties

| Property | Description |
| --- | --- |
| inverseInertiaScale | The inverse inertia scaling that the solver should apply to the first body of this contact pair. |
| inverseMassScale | The inverse mass scaling that the solver should apply to the first body of this contact pair. |
| otherInverseInertiaScale | The inverse inertia scaling that the solver should apply to the second body of this contact pair. |
| otherInverseMassScale | The inverse mass scaling that the solver should apply to the second body of this contact pair. |
