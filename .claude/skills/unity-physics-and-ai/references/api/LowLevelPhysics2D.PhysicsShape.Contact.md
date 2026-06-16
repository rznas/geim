<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.Contact.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The contact between two shapes. By convention the manifold normal points from shape A to shape B. See PhysicsBody.GetContacts and PhysicsShape.GetContacts.

### Properties

| Property | Description |
| --- | --- |
| contactId | The unique Id of this contact. This contact is volatile and may be destroyed automatically when the world is modified or simulated therefore it should always be checked for validity with ContactId.isValid. |
| manifold | The contact manifold describing the contact. |
| shapeA | One of the shapes involved in the contact. |
| shapeB | The other shape involved in the contact. |
