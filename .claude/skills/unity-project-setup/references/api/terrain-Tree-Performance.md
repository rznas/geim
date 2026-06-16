<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/terrain-Tree-Performance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Performance tips for trees

To improve the performance of trees:

- Performance depends on the polygon count of your tree model. Test your trees on your platform, and create simpler trees if performance is low.
- Don’t create too many leaves and branches, because this can reduce performance.
- Each **Terrain** tile has settings for tree drawing, such as the distance from the **camera** where trees switch to **billboard** mode. These settings can impact the gaming experience when they create transitions that are visible to the player. Refer to the Terrain Settings reference for more information.

## Additional resources

- Tree level of detail (LOD)
- Shaders and the Ambient-Occlusion folder
- Tree Hierarchy view UI reference
- Root node reference
- Branch group reference
- Leaf group reference
- Terrain Settings reference
