<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/collider-shapes-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to collider shapes

Colliders are available in different shape configurations. There are three main shape types for **colliders**:

- Primitive colliders are built-in simple shapes, which you can attach to your **GameObject** and scale to approximately the same size and shape. They are the most computationally efficient shape option, but the least accurate for complex GameObject shapes.
- Mesh colliders exactly match the shape of the GameObject’s Mesh. They are more accurate than primitive colliders, but require more computational resources.
- Wheel colliders are for in-game items that have physics-simulated wheels (for example, ground vehicles). They have built-in wheel physics, and controls for simulating friction and suspension.

You can also combine several collider shapes to create compound colliders.

In addition, Unity’s Terrain tool has a specific heightmap-based collider, called the Terrain Collider.

## Additional resources

- Collider shapes
