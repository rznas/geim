<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.ProcessingState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The state of the read request at the time of retrieval of AsyncReadManagerMetrics.

### Properties

| Property | Description |
| --- | --- |
| Unknown | The read request status was unknown. |
| InQueue | The read request was waiting in the queue to be read. |
| Reading | The read request was in the process of being read. |
| Completed | The read request had fully completed. |
| Failed | The read request had failed before completion. |
| Canceled | The read was canceled before completion. |
