<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.UsageFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The intended usage of a GraphicsBuffer.

Provide the intended usage (mode) when creating a GraphicsBuffer.

GraphicsBuffer.UsageFlags.None lets you update the data using GraphicsBuffer.SetData.

GraphicsBuffer.UsageFlags.LockBufferForWrite lets you write to the buffer using GraphicsBuffer.LockBufferForWrite. See GraphicsBuffer.UsageFlags.LockBufferForWrite for information on limitations and considerations to take when using this mode.

Additional resources: GraphicsBuffer class, GraphicsBuffer constructor

### Properties

| Property | Description |
| --- | --- |
| None | Sets the update mode flags to None. This is the default update mode. |
| LockBufferForWrite | Enable the LockBufferForWrite and UnlockBufferAfterWrite methods on the GraphicsBuffer. CAUTION: when using this flag, ensure that you do not introduce memory read/write hazards. |
