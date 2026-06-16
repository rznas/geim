<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-changeStopsCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set whether the reporting of collisions callbacks immediately stops if any of the objects involved in the collision are deleted or moved.

During a collision callback, if either a Collider2D or Rigidbody2D that is taking part in that particular callback is deleted or moved then this property controls whether callbacks will continue for this contact or not.

Additional resources: Collider2D, Rigidbody2D.
