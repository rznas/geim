<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/collider-surfaces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Collider surfaces

In real-world physics, objects that can collide have different surface textures and properties that affect how they collide with each other, and how they interact with each other.

To control how objects collide with each other in the physics simulation, you can adjust the friction and bounciness of your **colliders**. In Unity, you use the Physics Material asset to control these parameters. The Physics Material asset is represented in the API by the `PhysicsMaterial` class.

For more detailed information on how PhysX applies friction and bounce, see the Nvidia PhysX documentation Rigid Body Dynamics: Friction and Restitution.

| **Topic** | **Description** |
| --- | --- |
| Collider surface friction | How Unity handles friction on collider surfaces, and how to configure friction properties. |
| Collider surface bounciness | How Unity handles bounciness on collider surfaces, and how to configure bounce properties. |
| How collider surface values combine | How Unity combines the values of surface properties in a collider pair; for example, how it calculates the friction between two colliders that have different friction values. |
| Create and apply a Physics Material | Create and configure a Physics Material to define a collider’s surface properties, and apply it to a collider. |
| Physics Material component reference | Reference page for the Physics Material asset. |
