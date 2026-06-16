<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.ExplosionDefinition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used to define the parameters when using PhysicsWorld.Explode.

### Static Properties

| Property | Description |
| --- | --- |
| defaultDefinition | Create a default explode definition. |

### Properties

| Property | Description |
| --- | --- |
| falloff | The falloff distance beyond the radius. Impulse is reduced to zero at this distance. |
| hitCategories | The categories that will produce hits. |
| impulsePerLength | Impulse per unit length. This applies an impulse according to the shape perimeter that is facing the explosion. Explosions only apply to circles, capsules, and polygons. This may be negative for implosions. |
| position | The center of the explosion in world space. |
| radius | The radius of the explosion. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsWorld.ExplosionDefinition | Create a default explode definition. |
