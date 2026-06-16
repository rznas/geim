<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.ContentZoomer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manipulator that allows zooming in GraphView.

### Static Properties

| Property | Description |
| --- | --- |
| DefaultMaxScale | Default max zoom level. |
| DefaultMinScale | Default min zoom level. |
| DefaultReferenceScale | Default reference zoom level. |
| DefaultScaleStep | Default zoom step. |

### Properties

| Property | Description |
| --- | --- |
| maxScale | Max zoom level. |
| minScale | Min zoom level. |
| referenceScale | Reference zoom level. |
| scaleStep | Zoom step: percentage of variation between a zoom level and the next. For example, with a value of 0.15, which represents 15%, a zoom level of 200% will become 230% when zooming in. |

### Constructors

| Constructor | Description |
| --- | --- |
| ContentZoomer | ContentZoomer constructor. |

### Protected Methods

| Method | Description |
| --- | --- |
| RegisterCallbacksOnTarget | Called to register click event callbacks on the target element. |
| UnregisterCallbacksFromTarget | Called to unregister event callbacks from the target element. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| target | VisualElement being manipulated. |
