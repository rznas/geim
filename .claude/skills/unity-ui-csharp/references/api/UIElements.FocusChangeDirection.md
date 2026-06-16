<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.FocusChangeDirection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for defining in which direction the focus moves in a focus ring.

Focus ring implementations can move the focus in various direction; they can derive from this class to formalize the various ways the focus can change from one element to the other.

### Static Properties

| Property | Description |
| --- | --- |
| lastValue | Last value for the direction defined by this class. |
| none | The null direction. This is usually used when the focus stays on the same element. |
| unspecified | Focus came from an unspecified direction, for example after a mouse down. |
