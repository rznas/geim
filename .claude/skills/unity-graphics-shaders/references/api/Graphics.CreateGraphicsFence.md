<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.CreateGraphicsFence.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fenceType | The GraphicsFenceType to create. Currently the only supported value is GraphicsFenceType.AsyncQueueSynchronisation. |
| stage | Which SynchronisationStage to insert the fence after. |

### Returns

**GraphicsFence** Returns a new GraphicsFence.

### Description

Creates a GraphicsFence.

The GPU passes through the `GraphicsFence` fence after it completes the `Blit`, `Clear`, `Draw`, `Dispatch` or texture copy command you sent before this call. This includes commands from command buffers that the GPU executes immediately before you create the fence.

You can use the `stage` parameter to insert the GraphicsFence fence after the end of either vertex or pixel processing. On some platforms, there's a gap between the end of vertex processing and the start of pixel processing in a draw call.

If the previous command was a compute shader dispatch, Unity ignores `stage`.

Some platforms cannot differentiate between the end of vertex processing and the end of pixel processing. On these platforms, you'll get the same results regardless of whether you use SynchronisationStage.PixelProcessing or SynchronisationStage.VertexProcessing as the value for `stage`.

If you call `CreateGraphicsFence` on a platform that doesn't support fences, the fence has no function, and the methods Graphics.WaitOnAsyncGraphicsFence and CommandBuffer.WaitOnAsyncGraphicsFence do nothing. Use SystemInfo.supportsGraphicsFence to check if a platform supports fences.

Additional resources: GraphicsFence, Graphics.WaitOnAsyncGraphicsFence, CommandBuffer.WaitOnAsyncGraphicsFence.
