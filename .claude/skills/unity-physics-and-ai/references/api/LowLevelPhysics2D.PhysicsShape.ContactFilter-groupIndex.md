<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.ContactFilter-groupIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Collision groups allow a certain group of objects to never collide (negative) or always collide (positive). A group index of zero has no effect. A non-zero group always overrides the category/contacts masks. The rules for two shapes coming into contact are: If either shape has a group of zero then the group is ignored and the category/contacts masks are used.If both shapes have a non-zero but different group then the category/contacts masks are used.If both shapes have an identical and positive group then they will always produce a contact.If both shapes have an identical and negative group then they will never produce a contact.
