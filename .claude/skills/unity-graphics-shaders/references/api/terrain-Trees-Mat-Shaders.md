<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/terrain-Trees-Mat-Shaders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Shaders and the Ambient-Occlusion folder

Trees you create using Tree Editor must use the **Nature/Soft Occlusion Leaves** and **Nature/Soft Occlusion Bark** **shaders**.

To use these shaders, you must place your trees in a folder named `Ambient-Occlusion`. The trees don’t render correctly if the shaders are in a different folder.

To place trees in the `Ambient-Occlusion` folder:

1. In the **Project** window, select the `Assets` folder.
2. Select **Add** (+) > **Folder**.
3. Give the folder the name `Ambient-Occlusion`.
4. Move the tree **prefab** (`Tree.prefab`) and its texture folder (`Tree_Textures`) into the `Ambient-Occlusion` folder. These objects were created when you added a Tree **GameObject** to your **scene**.

**Note**: The dependency on these shaders means you can only use Tree Editor trees with the Built-In **Render Pipeline**. If you’re using the Universal Render Pipeline (URP) or High Definition Render Pipeline (HDRP), you can import trees from SpeedTree.

## Additional resources

- Tree level of detail (LOD)
- Tree Hierarchy view UI reference
- Root node reference
- Branch group reference
- Leaf group reference
- Terrain Settings reference
