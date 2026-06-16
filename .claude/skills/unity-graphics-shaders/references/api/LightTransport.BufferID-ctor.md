<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BufferID-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The value to construct the BufferID. |

### Description

Create a new BufferID.

Creates a BufferID from a raw value. This constructor can be used to create BufferIDs from handles or pointers.

The value is implementation-specific and can represent:

- Memory pointers in CPU implementations.
- GPU buffer handles in GPU implementations.
- Indices into internal buffer tables or other implementation-defined identifiers.

**Note:** This is an advanced feature that permits unsafe code for advanced use cases. BufferIDs should typically be obtained through IDeviceContext.CreateBuffer rather than constructing them manually.
