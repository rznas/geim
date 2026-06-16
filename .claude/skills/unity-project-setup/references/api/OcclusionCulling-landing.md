<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/OcclusionCulling-landing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Excluding hidden objects with occlusion culling

Resources about preventing Unity doing rendering calculations for hidden **GameObjects**.

**Note:** If your project uses the Universal **Render Pipeline** (URP) or the High Definition Render Pipeline (HDRP), you can instead Enable GPU occlusion culling in URP or Enable GPU occlusion culling in HDRP.

| **Page** | **Description** |
| --- | --- |
| Occlusion culling | Understand how occlusion culling checks for hidden objects, and when to use it. |
| Set up a scene for occlusion culling | Set up a **scene** for occlusion culling, bake occlusion culling data, and check the results. |
| Set up multiple scenes for occlusion culling | Prepare occlusion culling data differently if you load multiple scenes at a time. |
| Cull moving GameObjects | Enable or disable Dynamic Occlusion. |
| Create high-precision occlusion areas | Use the Occlusion Area component to define an area where Unity calculates culling more precisely. |
| Control occlusion in areas with Occlusion Portals | Turn occlusion on and off through an object, for example a door that opens and closes. |
| Occlusion Culling window reference | Explore the properties and settings in the Occlusion Culling window to customize how culling works. |
| Configure culling with the CullingGroup API | Integrate your own systems into Unity’s culling and **level of detail** (LOD) pipelines. |
| Troubleshooting occlusion culling | Solve common problems when using occlusion culling. |

## Additional resources

- Graphics performance and profiling
- Enable GPU occlusion culling in URP
