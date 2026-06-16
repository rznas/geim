<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/mesh-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to meshes

A mesh is a collection of data that describes a shape. In Unity, you use meshes in the following ways:

- In graphics, you use meshes together with materials; meshes describe the shape of an object that the GPU renders, and materials describe the appearance of its surface.
- In physics, you can use a mesh to determine the shape of a **collider**.

## Deformable meshes

In addition to regular meshes, Unity also supports deformable meshes.

Deformable meshes fall into the following categories:

- Skinned meshes: These meshes work with additional data called bones. Bones form a structure called a skeleton (also called a rig, or joint hierarchy), and the skinned mesh contains data that allows it to deform in a realistic way when the skeleton moves. You usually use skinned meshes for [skeletal animation](https://en.wikipedia.org/wiki/Skeletal_animation) with Unity’s Animation features, but you can also use them with Rigidbody components to create “ragdoll” effects.
- Meshes with blend shapes: These meshes contain data called blend shapes. Blend shapes describe versions of the mesh that are deformed into different shapes, which Unity interpolates between. You use blend shapes for [morph target animation](https://en.wikipedia.org/wiki/Morph_target_animation), which is a common technique for facial animation.
- Meshes that work with a Cloth component component for realistic fabric simulation.

## Working with meshes

Unity stores meshes in your project as mesh assets, and represents them in C# code with the Mesh class.

Depending on how you use meshes, they work with different components:

- In graphics, Unity renders regular meshes with Mesh Renderer components, and deformable meshes with Skinned Mesh Renderer components.
- In physics, Unity uses the Mesh Collider component to determine the shape of a collider.

For detailed information about the data that a mesh contains and how Unity represents that data, see Mesh data.
