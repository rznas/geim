<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.RuntimePanelUtils.ResetRenderer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Resets the renderer of the panel. Releases all meshes, rendering commands, and pools owned by the renderer.

Call this method to force a defragmentation and reordering of mesh memory. This can potentially reduce draw calls and memory usage. Use sparingly, such as during Scene loading or for testing.
