<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactFilter2D-useTriggers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets to filter contact results based on trigger collider involvement.

Set to false to ignore any contacts involving trigger colliders. Set to true, to filter any contacts involving triggers and return such contacts.

**Note:** Contacts filtered by involved trigger colliders, are not filtered by the normal angles of the collisions, so useNormalAngle, minNormalAngle and maxNormalAngle are ignored. Other active contacts will continue to be filtered by the normal angles of the collisions.
