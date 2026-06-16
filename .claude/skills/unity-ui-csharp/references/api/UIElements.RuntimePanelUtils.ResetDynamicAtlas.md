<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.RuntimePanelUtils.ResetDynamicAtlas.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Resets the dynamic atlas of the panel.

Call this method to force a defragmentation of the atlas, which might reduce GPU memory usage. Use sparingly: the meshes and rendering commands of all textured elements will be released and will need to be regenerated.
