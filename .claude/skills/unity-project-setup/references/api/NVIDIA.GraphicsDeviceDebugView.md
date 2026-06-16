<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NVIDIA.GraphicsDeviceDebugView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a memory snapshot of the current feature states. The memory of the arrays/buffers in this struct are tied to the lifetime of the debug view. Additional resources: GraphicsDevice.CreateDebugView, GraphicsDevice.UpdateDebugView and GraphicsDevice.DeleteDebugView.

### Properties

| Property | Description |
| --- | --- |
| deviceVersion | The version that corresponds to Unity's host plugin NVUnityPlugin. |
| ngxVersion | The current version id of the official internal NV NGX library. This version can change if you swap the DLLs for DLSS. |
