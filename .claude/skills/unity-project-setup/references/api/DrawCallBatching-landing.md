<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/DrawCallBatching-landing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Combine meshes using batching

Resources and approaches for improving performance by combining static **GameObjects** or moving GameObjects into fewer draw calls.

| **Page** | **Description** |
| --- | --- |
| Introduction to batching | Understand how Unity creates batches of static and dynamic GameObjects to reduce draw calls. |
| Set up GameObjects for batching | Get the best results from batching, and make sure Unity batches GameObjects. |
| Batch static meshes at build time | Use **static batching** to combine static meshes at build time. |
| Batch meshes at runtime | Batch static objects with the `StaticBatchingUtility` API, or dynamic GameObjects with **dynamic batching**. |
| Combine meshes manually | Merge multiple meshes into a single **mesh** that Unity can render in a single draw call. |
| Access properties in combined meshes | Use MaterialPropertyBlocks to change properties of combined meshes without breaking batching. |

## Additional resources

- Choose a method for optimizing draw calls
- Reduce rendering work on the CPU or GPU
