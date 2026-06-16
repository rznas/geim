<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ThreadedBatchContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Thread-safe and Burst-safe API for interacting with a BatchRendererGroup from Burst jobs.

### Properties

| Property | Description |
| --- | --- |
| batchRendererGroup | An internal handle to the BatchRendererGroup object that created this threaded context. |

### Public Methods

| Method | Description |
| --- | --- |
| AddBatch | Thread-safe alias for BatchRendererGroup.AddBatch. |
| RemoveBatch | Thread-safe alias for BatchRendererGroup.RemoveBatch. |
| SetBatchBuffer | Change the GraphicsBuffer associated with the given batch. Thread-safe alias for BatchRendererGroup.SetBatchBuffer. |
