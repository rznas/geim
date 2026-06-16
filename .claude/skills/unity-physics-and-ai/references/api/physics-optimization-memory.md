<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/physics-optimization-memory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Optimize the physics system for memory usage

You can optimize how the Unity physics system uses memory resources by managing **collision** callback allocations and optimizing various physics queries. Efficient memory usage helps reduce garbage collection overhead and ensures smoother gameplay.

Use the guidance in these pages to maintain your target frame rate and ensure smooth, responsive gameplay. The instructions in these pages address issues identified by Unity Editor diagnostic tools. Before you apply these optimizations described in the documentation in this section and throughout your development, you must be familiar with these diagnostic tools:

- **The Unity Profiler**
- [**The Memory Profiler**](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest)
- **The Physics Debug window**

| **Topic** | **Description** |
| --- | --- |
| **Optimize collision callbacks** | Reduce memory allocations caused by frequent collision events. |
| **Optimize raycasts and other physics queries** | Optimize physics query performance and reduce garbage collection overhead by using efficient query versions and batch processing. |

## Additional resources

- Unity Profiler
- Built-in 3D Physics
- [Memory Profiler](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest)
- Physics Project Settings
