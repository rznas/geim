<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-contactCaptureLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The layers of other Collider2D involved in contacts with this Collider2D that will be captured.

Contacts are produced by the physics system and are used to calculate behaviours such as collision response. These contacts are processed automaticallly but they only need to be captured for performing physics queries on them or to produce physics callbacks. Normally all contact layers will be captured and stored, however this will result in increased processing time and memory consumption. Selecting which layer(s) you are interested in capturing can therefore increase performance and reduce overall memory consumption however those layer(s) not captured will result in those contacts not being available in physics queries and won't produce physics callbacks.

By configuring the specific layer(s) you are interested in querying or receiving callbacks for, you ensure you will only receive responses from selected layer(s). This allows you to write more specific scripts as you can assume that only specific layer(s) will be available.

It is important to understand that the capture of contacts does not affect collision response as contacts will always be handled by the physics system before capture.

These are the physics queries which require the capture of contacts:

- Physics2D.IsTouching
- Rigidbody2D.IsTouching
- Collider2D.IsTouching,
- Physics2D.IsTouchingLayers
- Rigidbody2D.IsTouchingLayers
- Collider2D.IsTouchingLayers,
- Physics2D.GetContacts
- Rigidbody2D.GetContacts
- Collider2D.GetContacts

These are all the physics callbacks which require the capture of contacts:

- OnCollisionEnter2D
- OnCollisionStay2D
- OnCollisionExit2D
- OnTriggerEnter2D
- OnTriggerStay2D
- OnTriggerExit2D

**NOTES**:

- This property does not control whether the Collider2D will come into contact or not but simply whether the resultant contacts are captured for querying and callbacks.
- Even if all layers are selected in Collider2D.callbackLayers, only those that are captured will be reported.
- Modifying contact capture layers will result in all contacts being destroyed. Contacts that are still valid will be reported as a new contacts via the physics callbacks.
- Due to this property destroying existing contacts, it is not recommended that this property be changed during runtime if you are tracking contact state via physics callbacks.
- Contacts are mutual therefore if either Collider2D involved in a contact disables capture of contacts then neither will see the contact.
- With contact capture off for a layer, no contact queries will return results for that layer nor will any callbacks be produced.

Additional resources: LayerMask.
