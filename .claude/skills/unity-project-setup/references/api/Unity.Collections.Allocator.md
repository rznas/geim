<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.Allocator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets which allocation type to use for a NativeArray.

### Properties

| Property | Description |
| --- | --- |
| Invalid | Use an invalid allocation. |
| None | Use no allocation. |
| Temp | Use a temporary allocation. |
| TempJob | Use a temporary job allocation. |
| Persistent | Use a persistent allocation. |
| AudioKernel | Use an allocation associated with a DSPGraph audio kernel. |
| Domain | Use an allocation associated with the lifetime of a domain. |
| FirstUserIndex | The first index that a custom allocator can get. |
