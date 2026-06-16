<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider-hasModifiableContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specify whether this Collider's contacts are modifiable or not.

All pairs with Colliders that have this flag set will be available to scripts via Physics.ContactModifyEvent.

Note that pairs are only notified to scripts as long as the corresponding bodies are awake. Once they fall asleep, there will no longer be any notification for such pairs.
