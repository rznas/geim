<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelFrictionCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

WheelFrictionCurve is used by the WheelCollider to describe friction properties of the wheel tire.

The curve takes a measure of tire slip as an input and gives a force as output. The curve is approximated by a two-piece spline. The first section goes from *(0,0)* to *(extremumSlip,extremumValue)*, at which point the curve's tangent is zero. The second section goes from *(extremumSlip,extremumValue)* to *(asymptoteSlip,asymptoteValue)*, where curve's tangent is again zero:



In the previous image a graph displays the wheel slip curve with force on the y-axis and slip on the x-axis. Force increases as slip increases up to the extremum point, after which force declines as slip increases up to the asymptote point. Beyond the asymptote the curve becomes a flat line as additional slip gives no further change in force.

Wheel collider computes friction separately from the rest of physics engine, using a slip based friction model. It separates the overall friction force into a "forwards" component (in the direction of rolling, and responsible for acceleration and braking) and "sideways" component (orthogonal to rolling, responsible for keeping the car oriented). Tire friction is described separately in these directions using WheelCollider.forwardFriction and WheelCollider.sidewaysFriction. In both directions it is first determined how much the tire is slipping (what is the speed difference between the rubber and the road). Then this slip value is used to find out tire force exerted on the contact.

The property of real tires is that for low slip they can exert high forces as the rubber compensates for the slip by stretching. Later when the slip gets really high, the forces are reduced as the tire starts to slide or spin. Thus tire friction curves have a shape like in the image above.

Because the friction for the tires is computed separately, the PhysicsMaterial of the ground does not affect the wheels. Simulation of different road materials is done by changing the WheelCollider.forwardFriction and WheelCollider.sidewaysFriction of the wheel, based on what material the wheel is hitting.

Additional resources: WheelCollider, WheelCollider.forwardFriction, WheelCollider.sidewaysFriction.

### Properties

| Property | Description |
| --- | --- |
| asymptoteSlip | Asymptote point slip (default 0.5f/0.8f). |
| asymptoteValue | Force at the asymptote slip (default 0.75f/0.5f). |
| extremumSlip | Extremum point slip (default 0.2f/0.4f). |
| extremumValue | Force at the extremum slip (default 1). |
| stiffness | Multiplier for the extremumValue and asymptoteValue values (default 1). |
