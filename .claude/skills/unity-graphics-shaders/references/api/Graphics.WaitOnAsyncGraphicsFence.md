<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.WaitOnAsyncGraphicsFence.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fence | The GraphicsFence the GPU waits for. The `fenceType` of the graphics fence must be GraphicsFenceType.AsyncQueueSynchronisation. |
| stage | Which SynchronisationStage to wait for. |

### Description

Instructs the GPU to pause processing of the queue until it passes through the GraphicsFence fence.

This method returns immediately on the CPU. Only GPU processing is affected by the graphics fence.

You can use the `stage` parameter to wait until the start of the next item's vertex or pixel processing. On some platforms, there's a gap between the end of vertex processing and the start of pixel processing in a draw call. If the last command was a compute shader dispatch, Unity ignores `stage`.

This method only works on platforms that support fences. Use SystemInfo.supportsGraphicsFence to check if a platform supports fences.

It's possible to create circular dependencies with this function that deadlock the GPU. See GraphicsFence for more information.

Additional resources: GraphicsFence, Graphics.CreateGraphicsFence.
