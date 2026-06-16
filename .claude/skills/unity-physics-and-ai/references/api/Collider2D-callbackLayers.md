<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-callbackLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Layers that this Collider2D will report collision or trigger callbacks for during a contact with another Collider2D.

When a contact occurs between two Collider2D, each Collider2D will get a collision or trigger callback. This options allows you to select which layer(s) will produce a callback.

The ability to limit which layers will result in a callback can reduce the complexity of the script inside the callback so that it can safely assume only specific layers will be reported. There is also a performance benefit in not performing callbacks that are not required.

These are all the physics callbacks which are affected by callback layers:

- OnCollisionEnter2D
- OnCollisionStay2D
- OnCollisionExit2D
- OnTriggerEnter2D
- OnTriggerStay2D
- OnTriggerExit2D

**NOTES**:

- This does not control whether the Collider2D will come into contact or not but simply if the resultant callback will happen.
- Even if all callback layers are selected, only contacts captured via Collider2D.contactCaptureLayers, will be reported.
- The other Collider2D involved in any contact callback disabled here will still receive callbacks defined by its own callbackLayers property.
- Normally both the Collider2D and the Rigidbody2D it is attached to receive a callback therefore this option controls both those component callbacks.
- When enabling callback layers where callbacks already exist, those contacts will not be reported as new contacts i.e. there will not be an OnCollisionEnter2D or OnTriggerEnter2D callback produced.

Additional resources: LayerMask.
