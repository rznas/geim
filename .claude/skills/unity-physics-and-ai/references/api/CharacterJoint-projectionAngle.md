<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterJoint-projectionAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the angular tolerance threshold (in degrees) for projection.

If the joint deviates by more than this angle around its locked angular degrees of freedom, the solver will move the bodies to close the angle.

Setting a very small tolerance may result in simulation jitter or other artifacts.

Sometimes it is not possible to project (for example when the joints form a cycle).
