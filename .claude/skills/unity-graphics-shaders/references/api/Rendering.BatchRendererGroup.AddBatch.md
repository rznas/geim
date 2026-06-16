<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchRendererGroup.AddBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| batchMetadata | The metadata properties for this batch. |
| buffer | The `GraphicsBufferHandle` of the `GraphicsBuffer` associated with this batch. |
| bufferOffset | The offset amount of the data to bound within the Uniform Buffer Object (UBO). This value defaults to zero, which is the start of the buffer. If this is a constant buffer, this value must be an integer multiple of BatchRendererGroup.GetConstantBufferOffsetAlignment. |
| windowSize | Amount of data in the buffer to be bound, starting from the bufferOffset value. Defaults to zero. If this is a constant buffer, this value must be less or equal to BatchRendererGroup.GetConstantBufferMaxWindowSize. |

### Returns

**BatchID** ID of the batch Unity has created.

### Description

Create a draw command batch that shares a single set of metadata values and a single `GraphicsBuffer`.

Every buffer you pass in to this method must have the correct buffer target for the active graphics API. Use the BatchRendererGroup.BatchBufferTarget query to find out which buffer target you should use. If the target is BatchBufferTarget.RawBuffer then both bufferOffset and windowSize must be zero If the target is BatchBufferTarget.ConstantBuffer, then bufferOffset must be an integer multiple of the BatchRendererGroup.GetConstantBufferOffsetAlignment value (zero allowed), and windowSize must be less than or equal to the BatchRendererGroup.GetConstantBufferMaxWindowSize value. The combined value of bufferOffset and windowSize must be less than or equal to the size of the ConstantBuffer.
