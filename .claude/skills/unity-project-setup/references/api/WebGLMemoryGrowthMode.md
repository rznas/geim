<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebGLMemoryGrowthMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An enum containing different memory growth modes.

This enum is used within the WebGL platform to define how the WASM memory heap grows.

### Properties

| Property | Description |
| --- | --- |
| None | The WASM memory heap has a fixed size. |
| Linear | The WASM memory heap is increased by constant increments. |
| Geometric | The WASM memory heap is increased by a geometric factor. |
