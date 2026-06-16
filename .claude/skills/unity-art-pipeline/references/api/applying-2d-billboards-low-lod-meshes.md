<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/applying-2d-billboards-low-lod-meshes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Applying 2D billboards for low LOD meshes

Billboards are a level-of-detail (LOD) method for drawing complicated 3D Meshes in a simpler way when they are far away from the **Camera**. When a **Mesh** is far away from the Camera, its size on screen means there is no need to draw it in full detail. Instead, you can replace the complex 3D Mesh with a 2D **billboard** representation.

The Billboard Renderer renders Billboard assets.

A Billboard asset is a collection of pre-rendered images of a mesh. Use it with the Billboard Renderer to an object that is distant from the Camera at a low level of detail (LOD).

The most common way to generate a Billboard Asset is to create files in [SpeedTree Modeler](https://unity.com/products/speedtree), and then import them into Unity.

It is also possible to create your own Billboard Assets from script. For more information, see the API reference for BillboardAsset.

Certain features, such as SpeedTree, export Billboard Assets, but you can also create them yourself. For information on how to create a Billboard Asset, see the BillboardAssets Manual page and the BillboardAsset Script reference page.
