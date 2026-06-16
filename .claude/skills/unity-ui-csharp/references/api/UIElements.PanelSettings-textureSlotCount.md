<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelSettings-textureSlotCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of textures that UI Toolkit can bind to the shader at once.

If the shader uses more than one texture slot, it applies dynamic branching to select the texture to read from. More texture slots can help decreasing the number of draw calls, which can improve CPU performance. However, the extra branching operations can reduce GPU performance.
