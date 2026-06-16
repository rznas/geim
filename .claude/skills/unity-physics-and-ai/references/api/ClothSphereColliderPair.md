<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClothSphereColliderPair.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A pair of SphereColliders used to define shapes for Cloth objects to collide against.

A ClothSphereColliderPair can contain either a single valid SphereCollider instance (with the second one being null), or a pair of two SphereColliders. In the former cases the ClothSphereColliderPair just represents a single SphereCollider for the cloth to collide against. In the latter case, it represents a conic capsule shape defined by the two spheres, and the cone connecting the two. Conic capsule shapes are useful for modelling limbs of a character.

Select the cloth object to see a visualization of Cloth colliders shapes in the Scene view.

### Properties

| Property | Description |
| --- | --- |
| first | The first SphereCollider of a ClothSphereColliderPair. |
| second | The second SphereCollider of a ClothSphereColliderPair. |

### Constructors

| Constructor | Description |
| --- | --- |
| ClothSphereColliderPair | Creates a ClothSphereColliderPair. If only one SphereCollider is given, the ClothSphereColliderPair will define a simple sphere. If two SphereColliders are given, the ClothSphereColliderPair defines a conic capsule shape, composed of the two spheres and the cone connecting the two. |
