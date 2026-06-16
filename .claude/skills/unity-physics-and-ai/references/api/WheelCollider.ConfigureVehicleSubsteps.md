<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelCollider.ConfigureVehicleSubsteps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| speedThreshold | The speed threshold of the sub-stepping algorithm. |
| stepsBelowThreshold | Amount of simulation sub-steps when vehicle's speed is below speedThreshold. |
| stepsAboveThreshold | Amount of simulation sub-steps when vehicle's speed is above speedThreshold. |

### Description

Configure vehicle sub-stepping parameters.

Every time a fixed update happens, the vehicle simulation splits this fixed delta time into smaller sub-steps and calculates suspension and tire forces per each smaller delta. Then, it would sum up all resulting forces and torques, integrate them, and apply to the vehicle's body.

Using this function you can customize how many sub-steps will be performed by the simulation above and below the speed threshold.

It's enough to call this function only once per each vehicle, as it actually sets parameters to the vehicle but not to a wheel.
