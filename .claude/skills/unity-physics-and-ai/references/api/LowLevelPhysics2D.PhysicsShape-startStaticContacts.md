<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape-startStaticContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Normally shapes on Static bodies don't create contacts when they are added to the world. This overrides that behavior and causes contact creation. This significantly slows down Static body creation which can be important when there are many Static shapes. This is implicitly always true for Triggers, Dynamic bodies and Kinematic bodies.

 See PhysicsShapeDefinition.startStaticContacts.
