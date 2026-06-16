<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SkinnedMeshRenderer.GetVertexBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**GraphicsBuffer** The skinned mesh vertex buffer as a GraphicsBuffer.

### Description

Retrieves a GraphicsBuffer that provides direct access to the GPU vertex buffer for this skinned mesh, for the current frame.

During motion vector rendering (used for motion blur, temporal anti-aliasing, or other effects), skinned meshes that have skinnedMotionVectors on alternate between two GPU vertex buffers. You can access the GPU vertex buffer for the current frame using `GetVertexBuffer`, and for the previous frame using GetPreviousVertexBuffer.

You can use this method to access the skinned mesh vertex buffer for the current frame in a ComputeShader. To do that, first request an appropriate buffer binding target via vertexBufferTarget, then get the graphics buffer using `GetVertexBuffer`, and then set it up as a parameter for your shaders using ComputeBuffer.SetBuffer, Material.SetBuffer and similar methods.

Additional resources: vertexBufferTarget, GetPreviousVertexBuffer.
