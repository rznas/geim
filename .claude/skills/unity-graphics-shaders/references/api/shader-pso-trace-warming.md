<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-pso-trace-warming.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Tracing and warming up PSOs

Trace and warm up graphics states with the experimental `GraphicsStateCollection` API to reduce **shader** compilation stutters.

**Important**: `GraphicsStateCollection` is an experimental API and might be changed or removed in the future.

The following sections outline how to trace and warm up PSOs in your project:

| **Topic** | **Description** |
| --- | --- |
| Introduction to PSO tracing and warming | Understand what PSO tracing and warming is, and the project requirements to use the `GraphicsStateCollection` API. |
| Trace and manage PSO data collections | Trace a new PSO data collection and manage existing collections. |
| Warm up PSOs | Warm up PSO collections on the GPU at runtime. |
| PSO tracing and warming example | Get started with PSO tracing and warm up using the Universal **Render Pipeline** (URP) sample. |

## Additional resources

- [Prevent shader compilation stutters with PSO Tracing in Unity 6](https://discussions.unity.com/t/prevent-shader-compilation-stutters-with-pso-tracing-in-unity-6/951031) (Unity Discussions)
