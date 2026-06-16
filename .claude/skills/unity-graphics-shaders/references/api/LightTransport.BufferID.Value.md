<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BufferID.Value.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The underlying buffer identifier value.

This value is implementation-specific and carries the actual buffer identifier used by the device context. The interpretation of this value depends on the concrete implementation:

- **CPU Implementations:** May store memory pointers or array indices.
- **GPU Implementations:** May store OpenCL buffer objects, GPU specific device pointers, or API-specific handles.

User code should treat this value as opaque and only use it for equality comparisons or debugging purposes.
