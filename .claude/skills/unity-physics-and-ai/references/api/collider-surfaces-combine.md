<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/collider-surfaces-combine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# How collider surface values combine

When two colliders are in contact, the physics system uses the surface properties of each **collider** to calculate the total friction and bounce between the two surfaces.

In Unity, you use the Physics Material asset to control these parameters. The Physics Material asset is represented in the API by the `PhysicsMaterial` class.

The Physics Material asset provides two properties: **Friction Combine** (`PhysicsMaterial.frictionCombine`) and **Bounce Combine** (`PhysicsMaterial.bounceCombine`). These properties each provide four options to control how the physics system calculates the total friction and bounce between two colliders:

| **Priority** | **Property** | **Description** |
| --- | --- | --- |
| 1 | **Maximum** | Use the largest of the two values. |
| 2 | **Multiply** | Use the product of one value multiplied by the other. |
| 3 | **Minimum** | Use the smallest of the two values. |
| 4 | **Average** | Use the mean average of the two values; that is, the sum of both values, divided by two. |

**Friction Combine** applies to both ****Dynamic Friction**** and **Static Friction**.

The properties in the table are in priority order. Unity takes priority into consideration when the colliders in a collider pair have Physic Material assets with different combine settings. For example, if one Physic Material asset’s **Friction Combine** is set to **Average**, and the other Physic Material asset’s **Friction Combine** is set to **Maximum**, Unity uses the **Maximum** calculation.
