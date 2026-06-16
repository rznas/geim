<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.IsAssetImportWorkerProcess.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** `true` if running in an asset import worker process; `false` if running in the main Editor process.

### Description

Determines whether the current process is an Asset Import Worker process.

This method allows import code to detect whether it's running in the main Unity Editor process or in a separate asset import worker process. Asset import workers are long-running processes that communicate with the main Editor to import assets in parallel. Each worker maintains its own global state that persists between import jobs, and global state changes made in worker processes are not reflected in the main Editor process.

Global state modifications during asset import can cause import results to vary between workers and over time, breaking deterministic asset processing and leading to unpredictable behavior. The best practice is to design import code to be stateless and self-contained using local variables, method parameters, or return values rather than static fields, global variables, or singleton patterns.

Use this method only when you need to conditionally skip global state modifications that cannot be immediately refactored. For example, you might use it to avoid registering objects with singletons or writing to global caches when running in a worker process.
