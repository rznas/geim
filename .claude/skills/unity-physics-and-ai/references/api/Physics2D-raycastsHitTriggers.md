<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-raycastsHitTriggers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the raycasts to either detect or not detect Triggers.

A Collider can be set up to act as a *trigger* which will detect other Colliders entering its volume but won't physically collide with them. Often, it is desirable to avoid detecting trigger Colliders with raycasts because they don't represent solid objects. This property lets you choose whether or not raycasts should detect triggers.

Additional resources: Collider2D.isTrigger, Raycast.
