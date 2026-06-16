<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-prewarm.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Warm up PSOs

Warm up PSO collections on the GPU at runtime.

**Important**: `GraphicsStateCollection` is an experimental API and might be changed or removed in the future.

To reduce stuttering, compile **shaders** and create PSOs before they’re first needed, so that the graphics driver caches them to disk. This is called warming up, prewarming, or precooking graphics states. You usually warm up during a loading screen, either when your application starts or while loading a **scene**.

## Warm up a collection

Once you’ve traced a PSO data collection, you can warm up the cached PSOs to disk.

**Note**: The recommended best practice is to prewarm your collection during application or scene loading sequences.

To warm up a PSO data collection, you can use two API methods:

- GraphicsStateCollection.WarmUp schedules the creation of all PSOs in the collection.
- GraphicsStateCollection.WarmUpProgressively schedules the creation of a set number of PSOs in the collection. Progressive warm up can result in a smoother experience and prevent blocking the application.

The `GraphicsStateCollection.WarmUp` and `GraphicsStateCollection.WarmUpProgressively` prewarm methods return a job handle, which you can use to set whether Unity performs the warming synchronously or asynchronously.

Once PSOs are created, they are cached to disk. The next time the GPU needs a PSO, they can be loaded directly from the cache.

## Check if shaders are warmed up

To check when Unity and the graphics driver compile shaders and create PSOs, search for the following **profiler markers** in the Profiler:

- `Shader.CreateGPUProgram` for Unity creating a GPU-specific version of a shader variant.
- `CreateGraphicsGraphicsPipelineImpl` for Unity creating a PSO.

## Additional resources

- PSO tracing and warming example
- Trace and manage PSO data collections
- How Unity loads and uses shaders
- Optimizing shader runtime performance
- [GraphicsStateCollection Tracing and Warmup in Unity 6](https://forum.unity.com/threads/graphicsstatecollection-tracing-and-warmup-in-unity-6.1606386/) (Unity Discussions)
