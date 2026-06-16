<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.EventID-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The value is used by the implementation and can be interpreted as a memory pointer or other implementation specific data. |

### Description

Construct a new EventID object.

Creates an EventID from a raw value. This constructor is primarily used to create EventIDs from internal handles.

The value is implementation-specific and can represent:

- Event handles or fences in GPU implementations.
- Thread synchronization objects in CPU implementations.
- Other implementation-defined identifiers.

**Note:** User code should typically obtain EventIDs through IDeviceContext.CreateEvent rather than constructing them manually.
