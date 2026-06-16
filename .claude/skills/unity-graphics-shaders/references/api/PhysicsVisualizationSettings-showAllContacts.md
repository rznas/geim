<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsVisualizationSettings-showAllContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the PhysicsDebugWindow visualizes all contacts.

If you set this property to false, only the following Colliders report collisions to the PhysicsDebugWindow: physics objects that have MonoBehaviour scripts with OnCollisionsEnter, OnCollisionsStay, and OnCollisionExit methods implemented, and Colliders that have Collider.generatesContacts property set to `true`.

If you set this property to true, all physics objects report all collisions to the PhysicsDebugWindow. If this property is set to true, Unity still takes PhysicsVisualizationSettings.useContactFiltering into account.

In Play mode, if you switch this property from false to true, this doesn't affect the Colliders that have already been initialized. In Play mode, if you switch this property from true to false, this hides the contact visualization but the Colliders remain subscribed.
