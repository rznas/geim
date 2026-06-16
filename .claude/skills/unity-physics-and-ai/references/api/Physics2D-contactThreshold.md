<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-contactThreshold.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A threshold below which a contact is automatically disabled.

Colliders placed side-by-side do not form a continuous surface which can result in unwanted contacts (known as "ghost collisions") when moving across these colliders. The main use-case here is to try to suppress these kinds of contacts.

When using a Rigidbody2D set to CollisionDetectionMode2D.Continuous, if a contact overlaps with a distance less than this threshold, it is automatically disabled as indicated in Collision2D.enabled.

The threshold is not used when the Rigidbody2D is set to CollisionDetectionMode2D.Discrete or the threshold is set to zero.

**NOTES**: Caution is advised against changing this threshold as increasing it may cause valid contacts to be disabled resulting in collider penetration/tunnelling and reducing it may allow unwanted contacts to be left enabled. Also, there is no guarantee that all such unwanted contacts can be suppressed with the contact threshold.
