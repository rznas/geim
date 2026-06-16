<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticlePhysicsExtensions.GetCollisionEvents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| go | The GameObject for which to retrieve collision events. |
| collisionEvents | Array to write collision events to. |
| ps | The Particle System that owns the potentially colliding particles. |

### Returns

**int** The number of collision events.

### Description

Get the particle collision events for a GameObject. Returns the number of events written to the array.

This method is typically called from MonoBehaviour.OnParticleCollision in response to a collision callback.

If the array used is too short, the list of collision events will be truncated. This means you will not have every event that occurred. To avoid this use ParticlePhysicsExtensions.GetSafeCollisionEventSize to determine an appropriate array size prior the call.

Additional resources: MonoBehaviour.OnParticleCollision.

### Description

Deprecated: Use the overload that takes a List. That overload doesn't create garbage.
