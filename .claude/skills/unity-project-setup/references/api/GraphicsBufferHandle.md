<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBufferHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores the internal handle of a GraphicsBuffer using a plain integer value.

The purpose of `GraphicsBufferHandle` is to represent a GraphicsBuffer using a struct which can be stored in unmanaged memory. This is necessary to interact with certain Unity APIs that may involve `unsafe`, Burst compatible code, and/or unmanaged memory such as NativeArray. For example, some parts of the BatchRendererGroup API use `GraphicsBufferHandle` to be able to set buffers from Burst compatible code.

Any `GraphicsBufferHandle` instances with the same `value` are completely equivalent to one another. A `GraphicsBufferHandle` can be manually constructed with any `uint` value that originates from a valid `GraphicsBufferHandle.value`. For example, you could store the `value` into a `NativeArray<uint>`, and later construct a new `GraphicsBufferHandle` with the same integer read from the array, and it would be equivalent to the original `GraphicsBufferHandle`.

A `GraphicsBufferHandle` is valid as long as the GraphicsBuffer it has been fetched from has not been disposed.

### Properties

| Property | Description |
| --- | --- |
| value | The integer value of this GraphicsBufferHandle. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Compares this GraphicsBufferHandle with another to determine their relative positions in the sort order, according to their integer values. |
| Equals | Checks if this GraphicsBufferHandle and another are equal, based on their integer values. |
