<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundleUnloadOperation.WaitForCompletion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Synchronously waits for the operation to complete.

Call this function if you need to wait on the main thread until the AssetBundleUnloadOperation completes. When you call `WaitForCompletion`, the Unity runtime also waits for all other pending asynchronous operations to complete.
