<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBufferType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ComputeBuffer type.

Different types of compute buffers map to different usage and declarations in HLSL shaders. Default type is "structured buffer" (`StructuredBuffer<T>` or `RWStructuredBuffer<T>`).

Additional resources: ComputeBuffer, ComputeShader, Material.SetBuffer.

### Properties

| Property | Description |
| --- | --- |
| Default | Default ComputeBuffer type (structured buffer). |
| Raw | Raw ComputeBuffer type (byte address buffer). |
| Append | Append-consume ComputeBuffer type. |
| Counter | ComputeBuffer with a counter. |
| Constant | ComputeBuffer that you can use as a constant buffer (uniform buffer). |
| Structured | ComputeBuffer that you can use as a structured buffer. |
| IndirectArguments | ComputeBuffer used for Graphics.DrawProceduralIndirect, ComputeShader.DispatchIndirect or Graphics.DrawMeshInstancedIndirect arguments. |
