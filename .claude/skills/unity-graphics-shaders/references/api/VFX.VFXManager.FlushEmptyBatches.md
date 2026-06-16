<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXManager.FlushEmptyBatches.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Deallocates all empty batches used in the VFX runtime.

Unity automatically keeps empty batches to reuse. This uses additional memory to avoid multiple allocations or deallocations. Use this function to force Unity to deallocate empty batches and reclaim memory.

Note: You can configure the amount of time empty batches are kept around in the VFX Project Settings.
