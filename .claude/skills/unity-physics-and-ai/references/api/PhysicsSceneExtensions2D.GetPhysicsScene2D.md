<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsSceneExtensions2D.GetPhysicsScene2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | The Scene from which to return the 2D physics Scene. |

### Returns

**PhysicsScene2D** The 2D physics Scene used by the Scene.

### Description

An extension method that returns the 2D physics Scene from the Scene.

Returns the PhysicsScene2D that is assigned to the selected Scene. The Scene may have created its own local 2D physics Scene in which case this provides access to that. Alternately the Scene may be using the default 2D physics Scene (Physics2D.defaultPhysicsScene) in which case that will be returned instead.

Additional resources: PhysicsScene2D and Scene.
