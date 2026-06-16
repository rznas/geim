<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlatformEffector2D-useOneWayGrouping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ensures that all contacts controlled by the one-way behaviour act the same.

When using the oneWay behaviour, each individual collider that comes into contact with the PlatformEffector2D is checked to see if it should be disabled or not by comparing its collision normal to the surfaceArc. Working on each individual collider like this can cause problems on objects that are comprised of multiple colliders.

If an object is comprised of many colliders and one of them has a contact disabled due to the one-way behaviour then it may be preferable to do the same for all colliders on the same object should they come into contact with the same PlatformEffector2D. To do this, set the useOneWayGrouping to true. When you do this, all colliders essentially act as one, all following each other with regards to the one-way behaviour.

When the useOneWayGrouping is not enabled, an object comprised of multiple colliders could end up in a situation where it has one collider contact disabled by passing through the one-way platform, but have others not able to pass through.

Additional resources: useOneWay.
