<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Raw interface to Unity's drawing functions.

This is the high-level shortcut into the optimized mesh drawing functionality of Unity.

### Static Properties

| Property | Description |
| --- | --- |
| activeColorBuffer | Currently active color buffer (Read Only). |
| activeColorGamut | Returns the currently active color gamut. |
| activeDepthBuffer | Currently active depth/stencil buffer (Read Only). |
| activeTier | The GraphicsTier for the current device. |
| minOpenGLESVersion | The minimum OpenGL ES version. The value is specified in PlayerSettings. |
| preserveFramebufferAlpha | True when rendering over native UI is enabled in Player Settings (readonly). |

### Static Methods

| Method | Description |
| --- | --- |
| Blit | Uses a shader to copy the pixel data from a texture into a render target. |
| BlitMultiTap | Copies source texture into destination, for multi-tap shader. |
| ClearRandomWriteTargets | Unset random write targets for Shader Model 4.5 level pixel shaders. |
| ConvertTexture | Copies the pixel data from one texture, converts the data into a different format, and copies it into another texture. |
| CopyBuffer | Copies the contents of one GraphicsBuffer into another. |
| CopyTexture | Copies pixel data from one texture to another. |
| CreateAsyncGraphicsFence | Shortcut for calling Graphics.CreateGraphicsFence with GraphicsFenceType.AsyncQueueSynchronisation as the first parameter. |
| CreateGraphicsFence | Creates a GraphicsFence. |
| DrawMesh | Draw a mesh. |
| DrawMeshInstanced | Draws the same mesh multiple times using GPU instancing. |
| DrawMeshInstancedIndirect | This function is now obsolete. Use Graphics.RenderMeshIndirect instead. Draws the same mesh multiple times using GPU instancing. |
| DrawMeshInstancedProcedural | This function is now obsolete. Use Graphics.RenderMeshPrimitives instead. Draws the same mesh multiple times using GPU instancing. This is similar to Graphics.DrawMeshInstancedIndirect, except that when the instance count is known from script, it can be supplied directly using this method, rather than via a ComputeBuffer. |
| DrawMeshNow | Draw a mesh immediately. |
| DrawProcedural | This function is now obsolete. For non-indexed rendering, use Graphics.RenderPrimitives instead. For indexed rendering, use Graphics.RenderPrimitivesIndexed. Draws procedural geometry on the GPU. |
| DrawProceduralIndirect | Draws procedural geometry on the GPU. |
| DrawProceduralIndirectNow | Draws procedural geometry on the GPU. |
| DrawProceduralNow | Draws procedural geometry on the GPU. |
| DrawTexture | Draw a texture in screen coordinates. |
| ExecuteCommandBuffer | Execute a command buffer. |
| ExecuteCommandBufferAsync | Executes a command buffer on an async compute queue with the queue selected based on the ComputeQueueType parameter passed. |
| RenderMesh | Renders a mesh with given rendering parameters. |
| RenderMeshIndirect | Renders multiple instances of a mesh using GPU instancing and rendering command arguments from argsBuffer. |
| RenderMeshInstanced | Renders multiple instances of a mesh using GPU instancing. |
| RenderMeshPrimitives | Renders multiple instances of a Mesh using GPU instancing and a custom shader. |
| RenderPrimitives | Renders non-indexed primitives with GPU instancing and a custom shader. |
| RenderPrimitivesIndexed | Renders indexed primitives with GPU instancing and a custom shader. |
| RenderPrimitivesIndexedIndirect | Renders indexed primitives with GPU instancing and a custom shader with rendering command arguments from commandBuffer. |
| RenderPrimitivesIndirect | Renders primitives with GPU instancing and a custom shader using rendering command arguments from argsBuffer. |
| SetRandomWriteTarget | Set random write target for Shader Model 4.5 level pixel shaders. |
| SetRenderTarget | Sets current render target. |
| WaitOnAsyncGraphicsFence | Instructs the GPU to pause processing of the queue until it passes through the GraphicsFence fence. |
