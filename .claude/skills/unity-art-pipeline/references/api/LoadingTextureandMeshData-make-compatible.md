<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/LoadingTextureandMeshData-make-compatible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Make a texture compatible with asynchronous texture loading

A texture is eligible for the asynchronous upload pipeline if the following conditions are met:

- The texture is not read/write enabled.
- The texture is not in the Resources folder.
- If the build target is Android, LZ4 **compression** is enabled in the Build Profiles window.

Note that if you load a texture using `LoadImage(byte[] data)`, this forces Unity to use the synchronous upload pipeline, even if the above conditions are met.

A **mesh** is eligible for the asynchronous upload pipeline if the following conditions are met:

- The mesh is not read/write enabled.
- The mesh is not in the Resources folder.
- The mesh has no BlendShapes.
- Unity has not applied **Dynamic Batching** to the mesh, either because the mesh is ineligible for Dynamic Batching or because Dynamic Batching is disabled. For more information on Dynamic Batching, see Draw call batching.
- The mesh vertex/index data is not needed by a **Particle** System, a **Terrain**, or a Mesh **Collider**.
- The mesh has no bone weights.
- The mesh topology is not quads.
- The meshCompression for the mesh asset is set to Off. If the build target is Android, LZ4 compression is enabled in the Build Profiles window.

In all other circumstances, Unity loads textures and meshes synchronously.
