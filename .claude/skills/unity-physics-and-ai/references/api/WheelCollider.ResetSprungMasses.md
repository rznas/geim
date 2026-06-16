<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelCollider.ResetSprungMasses.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reset the sprung masses of the vehicle.

Recomputes the sprung masses of all wheels of the vehicle this wheel belongs to. In addition, it clears the internal explicit sprung mass distribution flag if that was raised before by calling WheelCollider.sprungMass. Note that because this function works with the vehicle itself but not just one wheel, it's enough to call it once for a vehicle, invoked with any wheel.
