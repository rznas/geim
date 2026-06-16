<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.SelectionDropper.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Selection drag&drop manipulator.

### Properties

| Property | Description |
| --- | --- |
| activateButton | Mouse button used to activate the manipulator. |
| clampToParentEdges | Clamp element being dragged to the parent's (usually the graph) edges. |
| panSpeed | When elements are dragged near the edges of the Graph, panning occurs. This controls the speed for said panning. |

### Constructors

| Constructor | Description |
| --- | --- |
| SelectionDropper | SelectionDropper's constructor. |

### Protected Methods

| Method | Description |
| --- | --- |
| OnMouseDown | Called on mouse down event. |
| OnMouseMove | Called on mouse move event. |
| OnMouseUp | Called on mouse up event. |
| RegisterCallbacksOnTarget | Called to register click event callbacks on the target element. |
| UnregisterCallbacksFromTarget | Called to unregister event callbacks from the target element. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| target | VisualElement being manipulated. |
