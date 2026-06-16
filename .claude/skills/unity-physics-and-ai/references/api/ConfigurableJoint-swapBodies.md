<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ConfigurableJoint-swapBodies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable this property to swap the order in which the physics engine processes the Rigidbodies involved in the joint. This results in different joint motion but has no impact on Rigidbodies and anchors.

Prior to Unity 3.4, this was wrongfully applied to all ConfigurableJoints with the `configuredInWorldSpace/` property set. If you want to restore the behaviour of older Unity versions and you are using `configuredInWorldSpace`, enable this property.
