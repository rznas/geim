<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/GraphicsCommandBuffers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# CommandBuffer fundamentals in the Built-In Render Pipeline

A CommandBuffer holds a list of rendering commands (such as setting the render target, or drawing a given mesh). You can instruct Unity to schedule and execute those commands at various points in the Built-in **Render Pipeline**, which allows you to customize and extend Unity’s rendering functionality.

You can execute CommandBuffers immediately using the Graphics.ExecuteCommandBuffer API, or you can schedule them so that they occur at a given point in the render pipeline. To schedule them, use the Camera.AddCommandBuffer API with the CameraEvent enum, and the Light.AddCommandBuffer API with the LightEvent enum. To see when Unity executes CommandBuffers that you schedule in this way, see CameraEvent and LightEvent order of execution.

For a full list of the commands that you can execute using CommandBuffers, see the CommandBuffer API documentation. Note that some commands are supported only on certain hardware; for example, the commands relating to **ray tracing** are supported only in DX12.

- Introduction to render pipelines
- Execute rendering commands in a Scriptable Render Pipeline
- Custom rendering and post-processing in URP
