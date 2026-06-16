<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsFence.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used to manage synchronisation between tasks on async compute queues and the graphics queue.

Not all platforms support graphics fences. See SystemInfo.supportsGraphicsFence.

A GraphicsFence represents a point during GPU processing after a specific compute shader dispatch or draw call has completed. It can be used to achieve synchronisation between tasks running on the async compute queues or the graphics queue by having one or more queues wait until a given fence has passed. This is an important consideration when working with async compute because the various tasks running at the same time on the graphics queue and the async compute queues are key to improving GPU performance.

You don't need to use a graphics fence to synchronise a GPU task writing to a resource and another GPU task reading the resource. Unity handles these resource dependencies automatically.

You must create a graphics fence using Graphics.CreateGraphicsFence or CommandBuffer.CreateGraphicsFence, otherwise Unity raises an exception.

It's possible to create circular dependencies that deadlock the GPU. Unity detects circular dependencies in the Editor, and raises exceptions if any dependencies exist after calls to the following:

- Graphics.CreateGraphicsFence
- Graphics.ExecuteCommandBuffer
- Graphics.ExecuteCommandBufferAsync
- ScriptableRenderContext.ExecuteCommandBuffer
- ScriptableRenderContext.ExecuteCommandBufferAsync

Additional resources: CommandBuffer.WaitOnAsyncGraphicsFence, Graphics.ExecuteCommandBuffer, Graphics.ExecuteCommandBufferAsync, ScriptableRenderContext.ExecuteCommandBuffer, ScriptableRenderContext.ExecuteCommandBufferAsync.

### Properties

| Property | Description |
| --- | --- |
| passed | true if GPU execution has passed the processing point where you inserted the GraphicsFence, otherwise false. |
