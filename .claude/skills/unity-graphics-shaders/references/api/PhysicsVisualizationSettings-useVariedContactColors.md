<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsVisualizationSettings-useVariedContactColors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether varied colors are used for PhysicsDebugWindow contact visualization.

If you set this property to false, PhysicsVisualizationSettings.contactColor, PhysicsVisualizationSettings.contactImpulseColor, and PhysicsVisualizationSettings.contactSeparationColor properties are used to visualize contacts.

If you set this property to true, random colors are used to visualize contacts. The Collider instance ID is hashed into a color that is used for the arrow representing the contact normal. The separation is visualized by an inverse color and the impulse is black. Note that PhysicsDebugWindow does not take PhysicsVisualizationSettings.baseAlpha into account.
