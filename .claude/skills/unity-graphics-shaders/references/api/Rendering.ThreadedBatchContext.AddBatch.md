<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ThreadedBatchContext.AddBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| batchMetadata | Metadata properties for this batch. |
| buffer | The `GraphicsBufferHandle` of the `GraphicsBuffer` associated with this batch. |
| bufferOffset | Offset of the buffer to be bound. Defaults to zero (start of the buffer). |
| windowSize | Amount of data in the buffer to be bound, starting from the bufferOffset value. Defaults to zero. If this is a constant buffer, this value must be less or equal to [SystemInfo.maxConstantBufferSize]. |

### Returns

**BatchID** ID of the batch that Unity creates.

### Description

Thread-safe alias for BatchRendererGroup.AddBatch.
