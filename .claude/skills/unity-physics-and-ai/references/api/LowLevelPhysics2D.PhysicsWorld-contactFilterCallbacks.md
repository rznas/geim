<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld-contactFilterCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls if contact filter callbacks will be called. A contact filter callback allows direct control over whether a contact will be created between a pair of shapes. This applies to both triggers and non-triggers but only with Dynamic bodies. These are relatively expensive so disabling them can provide a significant performance benefit. A contact filter callback will call the PhysicsShape.callbackTarget for both shapes involved if they implement IContactFilterCallback.
