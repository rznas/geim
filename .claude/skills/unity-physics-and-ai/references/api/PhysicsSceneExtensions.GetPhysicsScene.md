<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsSceneExtensions.GetPhysicsScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | The Scene from which to return the 3D physics Scene. |

### Returns

**PhysicsScene** The 3D physics Scene used by the Scene.

### Description

An extension method that returns the 3D physics Scene from the Scene.

Returns the PhysicsScene that is assigned to the selected Scene. The Scene may have created its own local 3D physics Scene in which case this provides access to that. Alternately the Scene may be using the default 3D physics Scene (Physics.defaultPhysicsScene) in which case that will be returned instead.

Additional resources: PhysicsScene and Scene.
