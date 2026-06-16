<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.LimitVelocityOverLifetimeModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the Limit Velocity Over Lifetime module.

Additional resources: ParticleSystem, ParticleSystem.limitVelocityOverLifetime.

### Properties

| Property | Description |
| --- | --- |
| dampen | Controls how much this module dampens particle velocities that exceed the velocity limit. |
| drag | Controls the amount of drag that this modules applies to the particle velocities. |
| dragMultiplier | Specifies the drag multiplier. |
| enabled | Specifies whether the LimitForceOverLifetimeModule is enabled or disabled. |
| limit | Maximum velocity curve, when not using one curve per axis. |
| limitMultiplier | Change the limit multiplier. |
| limitX | Maximum velocity curve for the x-axis. |
| limitXMultiplier | Change the limit multiplier on the x-axis. |
| limitY | Maximum velocity curve for the y-axis. |
| limitYMultiplier | Change the limit multiplier on the y-axis. |
| limitZ | Maximum velocity curve for the z-axis. |
| limitZMultiplier | Change the limit multiplier on the z-axis. |
| multiplyDragByParticleSize | Adjust the amount of drag this module applies to particles, based on their sizes. |
| multiplyDragByParticleVelocity | Adjust the amount of drag this module applies to particles, based on their speeds. |
| separateAxes | Set the velocity limit on each axis separately. This module uses ParticleSystem.LimitVelocityOverLifetimeModule.drag to dampen a particle's velocity if the velocity exceeds this value. |
| space | Specifies if the velocity limits are in local space (rotated with the transform) or world space. |
