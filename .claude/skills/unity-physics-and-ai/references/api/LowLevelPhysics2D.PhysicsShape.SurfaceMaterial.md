<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.SurfaceMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the dynamics of a surface on a shape.

### Static Properties

| Property | Description |
| --- | --- |
| Default | Get the default surface material. |

### Properties

| Property | Description |
| --- | --- |
| bounciness | The bounciness (coefficient of restitution) usually in the range [0, 1]. |
| bouncinessMixing | Defines the method used when mixing the bounciness values of two shapes to form a contact. |
| bouncinessPriority | The priority for mixing the PhysicsShape.bounciness properties when two shapes come into contact. If the priority of one shape is higher than the other shape then the higher priority PhysicsShape.SurfaceMaterial.bouncinessMixing will be used. If the priority of both shapes are the same then simply the higher enumeration value of MixingMode from both shapes will be used. |
| customColor | Custom debug draw color. Any color value other than (0,0,0,0) will be used to render the shape. This value is passed back when using the PhysicsWorld debug drawing. The alpha value here is always ignored. This is only used in the Unity Editor or in a Development Player. See UnityEngine.Color.clear and LowLevelPhysics2D.PhysicsWorld.Draw. |
| friction | The Coulomb (dry) friction coefficient, usually in the range [0, 1]. |
| frictionMixing | Defines the method used when mixing the friction values of two shapes to form a contact. |
| frictionPriority | The priority for mixing the PhysicsShape.friction properties when two shapes come into contact. If the priority of one shape is higher than the other shape then the higher priority PhysicsShape.SurfaceMaterial.frictionMixing will be used. If the priority of both shapes are the same then simply the higher enumeration value of MixingMode from both shapes will be used. |
| rollingResistance | The rolling resistance usually in the range [0, 1]. |
| tangentSpeed | The tangent (surface) speed. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsShape.SurfaceMaterial | Create a default surface material. |
