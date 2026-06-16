<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderingPath.DeferredShading.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Deferred Shading.

This is a standard deferred shading path, that renders Scene information into G-Buffers using multiple render targets, and computes lighting afterwards.

Due to use of multiple render targets, it requires GPU with MRT support.

Note: Deferred rendering is not compatible with orthographic camera projection.
