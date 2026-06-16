<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchBufferTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Expected target for the buffer passed to BatchRendererGroup.AddBatch.

.

### Properties

| Property | Description |
| --- | --- |
| Unknown | This is the default uninitialized value for this enum. It is here as a placeholder. Unity will never return this, and you will never use it. |
| UnsupportedByUnderlyingGraphicsApi | The Batch Renderer does not support the active graphics API because this API does not provide buffer targets for the BatchRendererGroup. |
| RawBuffer | If [Rendering.BatchBufferTarget] returns this value, the per batch buffer must be a raw buffer. |
| ConstantBuffer | If [Rendering.BatchBufferTarget] returns this value, the per batch buffer must be a constant buffer. |
