<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider-providesContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether or not this Collider generates contacts for Physics.ContactEvent.

If this property is set to `true`, all contacts produced by this collider will appear in the buffer. If this property is set to false, contact generation will depend on these factors:

- If the Collider or its Rigidbody have a script with a MonoBehaviour.OnCollisionStay method, all contacts will be generated for Physics.ContactEvent.
- If the Collider or its Rigidbody has a script with either MonoBehaviour.OnCollisionEnter or MonoBehaviour.OnCollisionExit but not MonoBehaviour.OnCollisionStay, enter and exit contacts will be generated for Physics.ContactEvent, but not stay contacts.
- If the PhysicsVisualizationSettings.showAllContacts property is set to true, all Colliders will generate all contacts for visualisation purposes!
