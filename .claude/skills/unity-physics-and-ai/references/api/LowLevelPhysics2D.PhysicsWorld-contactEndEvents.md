<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld-contactEndEvents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the contact end events from the last simulation. The PhysicsShape objects returned should be checked to see if they are valid before accessing as they may have been deleted since this event was produced (see PhysicsShape.isValid). The Contact objects returned should be checked to see if they are valid before accessing as they may have been deleted since this event was produced (see LowLevelPhysics2D.PhysicsShape.Contact.isValid). Any change to the world state can invalidate this data so referring to this data afterwards may cause an unavoidable crash! It is recommended that you immediately extract what information you need and not directly reference the returned data. See ContactEndEvent.
