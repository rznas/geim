<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines state and drawing commands that custom render pipelines use.

When you define a custom RenderPipeline, you use a ScriptableRenderContext to schedule and submit state updates and drawing commands to the GPU.

A RenderPipeline.Render method implementation typically culls objects that the render pipeline doesn't need to render for every Camera (see CullingResults), and then makes a series of calls to ScriptableRenderContext.DrawRenderers intermixed with ScriptableRenderContext.ExecuteCommandBuffer calls. These calls set up global Shader properties, change render targets, dispatch compute shaders, and other rendering tasks. To actually execute the render loop, call ScriptableRenderContext.Submit.

Additional resources: RenderPipeline.

### Public Methods

| Method | Description |
| --- | --- |
| BeginRenderPass | Schedules the beginning of a new render pass. Only one render pass can be active at any time. |
| BeginScopedRenderPass | Schedules the beginning of a new render pass. If you call this a using-statement, Unity calls EndRenderPass automatically when exiting the using-block. Only one render pass can be active at any time. |
| BeginScopedSubPass | Schedules the beginning of a new sub pass within a render pass. If you call this in a using-statement, Unity executes EndSubPass automatically when exiting the using-block. Render passes can never be standalone, they must always contain at least one sub pass. Only one sub pass can be active at any time. |
| BeginSubPass | Schedules the beginning of a new sub pass within a render pass. Render passes can never be standalone, they must always contain at least one sub pass. Only one sub pass can be active at any time. |
| CreateGizmoRendererList | Creates a new Gizmo RendererList. |
| CreateRendererList | Creates a new renderers RendererList. |
| CreateShadowRendererList | Creates a new shadow RendererList. |
| CreateSkyboxRendererList | Creates a new skybox RendererList. |
| CreateUIOverlayRendererList | Creates a new UIOverlay RendererList. |
| CreateWireOverlayRendererList | Creates a new WireOverlay RendererList. |
| Cull | Performs culling based on the ScriptableCullingParameters typically obtained from the Camera currently being rendered. |
| CullShadowCasters | Performs shadow casters culling for all the visible lights. |
| DrawGizmos | Schedules the drawing of a subset of Gizmos (before or after post-processing) for the given Camera. |
| DrawUIOverlay | Draw the UI overlay. |
| DrawWireOverlay | Schedules the drawing of a wireframe overlay for a given Scene view Camera. |
| EndRenderPass | Schedules the end of a currently active render pass. |
| EndSubPass | Schedules the end of the currently active sub pass. |
| ExecuteCommandBuffer | Schedules the execution of a custom graphics Command Buffer. |
| ExecuteCommandBufferAsync | Schedules the execution of a Command Buffer on an async compute queue. The ComputeQueueType that you pass in determines the queue order. |
| HasInvokeOnRenderObjectCallbacks | Check if any objects in the scene have OnRenderObject callbacks registered. |
| InvokeOnRenderObjectCallback | Schedules an invocation of the OnRenderObject callback for MonoBehaviour scripts. |
| PrepareRendererListsAsync | Starts to process the provided RendererLists in the background. |
| QueryRendererListStatus | Queries the status of a RendererList. |
| SetupCameraProperties | Schedules the setup of Camera specific global Shader variables. |
| StartMultiEye | Schedules a fine-grained beginning of stereo rendering on the ScriptableRenderContext. |
| StereoEndRender | Schedule notification of completion of stereo rendering on a single frame. |
| StopMultiEye | Schedules a stop of stereo rendering on the ScriptableRenderContext. |
| Submit | Submits all the scheduled commands to the rendering loop for execution. |
| SubmitForRenderPassValidation | This method submits all the scheduled commands to the rendering loop for validation. The validation checks whether render passes that were started with the BeginRenderPass call can execute the scheduled commands. |

### Static Methods

| Method | Description |
| --- | --- |
| EmitGeometryForCamera | Emits UI geometry for rendering for the specified camera. |
| EmitWorldGeometryForSceneView | Emits UI geometry into the Scene view for rendering. |
| PopDisableApiRenderers | Enable the immediate addition and removal of renderer scene nodes to the scene arrays. |
| PushDisableApiRenderers | Prevent the immediate addition or removal of renderer scene nodes to the scene arrays. This protects against the creation of invalid indices or dangling pointers caused by changes to the scene arrays after the culling output has been computed. |
