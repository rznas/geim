<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ColliderErrorState2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates what (if any) error was encountered when creating a 2D Collider.

This error state can be read directly from the 2D Collider via the property: Collider2D.errorState.

### Properties

| Property | Description |
| --- | --- |
| None | Indicates that no error was encountered, therefore the 2D Collider was created successfully. |
| NoShapes | Indicates that no physics shapes were created by the 2D Collider because the state of 2D Collider resulted in vertices too close or an area that is too small for the physics engine to handle. |
| RemovedShapes | Indicates that some physics shapes were not created by the 2D Collider because the state of 2D Collider resulted in vertices too close or an area that is too small for the physics engine to handle. |
