<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.EventID.Value.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The underlying event identifier value.

This value is implementation-specific and carries the actual event identifier used by the device context. The interpretation of this value depends on the concrete implementation:

- **CPU Implementations:** May store thread handles, condition variables, or other synchronization primitives.
- **GPU Implementations:** May store OpenCL event objects, CUDA event handles, or API-specific synchronization objects.

User code should treat this value as opaque and only use it for equality comparisons or debugging purposes.
