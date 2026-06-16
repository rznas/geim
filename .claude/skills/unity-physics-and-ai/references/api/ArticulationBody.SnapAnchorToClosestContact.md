<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.SnapAnchorToClosestContact.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Snap the anchor to the closest contact between the connected bodies.

Computes the point on the surface of this body closest to the center of mass of the parent body and sets the anchor to it. If ArticulationBody.computeParentAnchor is set, the parent anchor will be updated accordingly too.

Note that, usually, local zero is not a great default position of the anchor in case the connected bodies have colliders attached, because the joint is likely to be trying to push the bodies into each other then. To address that, this function picks a reasonable default location of the anchors that will work with many articulations.
