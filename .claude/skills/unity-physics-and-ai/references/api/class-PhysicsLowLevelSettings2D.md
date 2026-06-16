<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-PhysicsLowLevelSettings2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Physics Low Level Settings 2D asset Inspector window reference

**Note**: This documentation is about writing C# scripts using the `LowLevelPhysics2D` API. To use 2D physics in the Unity Editor using components like the Rigidbody 2D component, refer to 2D physics instead.

Explore the properties and settings you can use to configure the defaults and global behaviour of the `LowLevelPhysics2D` API. For more information, refer to Configure global 2D physics settings.

## Layers

The properties in this section configure the layers Unity uses to detect **collision**. For more information, refer to Configure collisions between LowLevelPhysics2D API objects.

| **Property** | **Description** |
| --- | --- |
| **Physics Layer Names** | Sets the names of the 64 layers the `PhysicsMask` API uses if you enable **Use Full Layers**. By default, the first layer has the name **Default** and the other layers have no name. |
| **Use Full Layers** | Enables the `PhysicsMask` API using the 64 layers listed under **Physics Layer Names**. If you disable this property, the `PhysicsMask` API uses the 32 GameObject layers instead. |

## Default Definitions

The properties in this section set the default values when you create a new definition object. For the individual sections, refer to the following:

- World definition reference
- Body definition reference
- Shape definition reference
- Chain definition reference
- Distance joint definition reference
- Fixed joint definition reference
- Hinge joint definition reference
- Relative joint definition reference
- Slider joint definition reference
- Wheel joint definition reference

## Globals

| **Property** | **Description** |
| --- | --- |
| **Concurrent Simulations** | Sets the number of physics simulations that can run at the same time. The default is 2. |
| **Length Units Per Meter** | Sets the number of **Unity units** that correspond to one meter in the physics simulation. The default is 1. |
| **Draw In Build** | Draws the debug visualization in a built application. For more information, refer to Draw a debug visualization of objects. |
| **Bypass Low Level** | Disables the `LowLevelPhysics2D` API physics system. |

## Additional resources

- Configure global 2D physics settings
- Configure 2D physics properties using a definition
