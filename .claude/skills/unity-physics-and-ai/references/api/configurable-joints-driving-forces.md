<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/configurable-joints-driving-forces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Driving forces with Configurable Joints

A **joint** can react to the movements of the object it is attached to, and apply driving forces to set the object in motion.

You can use the **Configurable Joint** to apply driving forces toward either a position-based target like a position or rotation, or a velocity-based target like a linear velocity or angular velocity.

## Understand driving forces

The Configurable Joint applies driving forces on each axis, via **axis drives**, to apply motion and rotation.

The axis drives for linear force are: * **X Drive** * **Y Drive** * **Z Drive**

The axis drives for angular or rotational force are: * **Angular X Drive** * **Angular YZ Drive**

Each axis drive has spring and damper options to simulate a motor that generates force. The physics system uses these values to calculate the driving force it should apply on that axis, via the following formula:

```
force = positionSpring * (targetPosition - position) + positionDamper * (targetVelocity - velocity)
```

The **Maximum Force** property prevents the force from exceeding a specific value, even if the force calculation result is higher.
