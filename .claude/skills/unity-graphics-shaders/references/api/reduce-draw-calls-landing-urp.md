<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/reduce-draw-calls-landing-urp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Optimizing draw calls in URP

Techniques for speeding up rendering by reducing the number of drawing commands the CPU sends to the GPU, in the Universal **Render Pipeline** (URP).

For more information about techniques for optimizing draw calls, refer to choose a method for optimizing draw calls.

| **Page** | **Description** |
| --- | --- |
| Scriptable Render Pipeline Batcher | Resources for using the Scriptable Render Pipeline (SRP) Batcher to reduce the number of render state changes between draw calls. |
| GPU Resident Drawer | Automatically use the `BatchRendererGroup` API to use instancing and reduce the number of draw calls. |
| BatchRendererGroup API | Resources for using the `BatchRendererGroup` API to reduce the number of batches in the SRP Batcher. |

## Additional resources

- Reduce rendering work on the CPU
- Optimize rendering lots of objects
- [Graphics rendering: Getting the best performance with Unity 6](https://www.youtube.com/watch?v=Oc6T4hh5gaI)
- [Performance tips and tricks from a Unity consultant](https://www.youtube.com/watch?v=CmD8MVGkDxQ)
