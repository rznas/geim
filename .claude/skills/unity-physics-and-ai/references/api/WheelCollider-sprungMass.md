<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelCollider-sprungMass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The mass supported by this WheelCollider.

Vehicle simulation uses the sprung mass model that assumes each wheel supports a particular portion of the vehicle's total mass at rest. By default, the sprung mass distribution is computed automatically based on the positions of the wheels relative to the vehicle's center of mass. However, it's also possible to set the masses explicitly. In this case, the whole vehicle is marked as having an explicit mass distribution and no sprung masses will ever be computed for it until the explicit flag is reset by calling WheelCollider.ResetSprungMasses. Note that the sum of all the sprung masses should be equivalent to the total mass of the vehicle. Because of that, adjusting a wheel's sprung mass will naturally require updating the sprung masses for the other wheels of the vehicle in order to match the vehicle's mass.
