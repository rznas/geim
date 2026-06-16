<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody-massConfiguration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The body mass configuration comprised of the PhysicsBody.mass, PhysicsBody.rotationalInertia and PhysicsBody.localCenterOfMass. Normally this is computed automatically as each PhysicsShape is added, removed or changed on a body. This will automatically change if the body type changes, for instance, a Static or Kinematic body always have zero mass and rotational inertia. The individual properties of the PhysicsBody.massConfiguration and be accessed using PhysicsBody.mass, PhysicsBody.rotationalInertia and PhysicsBody.localCenterOfMass. The MassConfiguration will be overwritten when setting this property or if PhysicsBody.ApplyMassFromShapes is called or when adding, removing or changing PhysicsShape with PhysicsShapeDefinition.startMassUpdate enabled.
