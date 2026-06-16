<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-performance-consideration-runtime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Performance consideration for runtime UI

This section describes how you can improve the performance for runtime UI.

| **Topic** | **Description** |
| --- | --- |
| Use usage hints to reduce draw calls and geometry regeneration | Use usage hints to set how an element is used at runtime. Usage hints can reduce draw calls and avoid geometry regeneration. |
| Control textures of the dynamic atlas | Use an atlas to reduce the number of batches broken by texture changes and achieve good performance. |
| Platform and mesh consideration | Consider device capabilities and avoid **mesh** tessellation. |

## Additional resources

- Panel Settings asset
- `usageHints`
