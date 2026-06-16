<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.Attacher.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper object that attaches a visual element next to its target, regarless of their respective location in the visual tree hierarchy.

The Attacher will monitor the position of the target and move the attached element accordingly.

### Properties

| Property | Description |
| --- | --- |
| alignment | Relative alignment between the attached element and the target. |
| distance | The distance between the attached element and the target. |
| element | The element that is attached to the target element. |
| offset | An absolute offset added to the element position after placement. |
| target | The target element. |

### Constructors

| Constructor | Description |
| --- | --- |
| Attacher | Attaches a visual element next to its target, regarless of their respective locations in the visual tree hierarchy. |

### Public Methods

| Method | Description |
| --- | --- |
| Detach | Stop monitoring the target element and postioning the attached element. |
| Reattach | Starts monitoring target element position changes and places the attached element accordingly. |
