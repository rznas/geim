<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelSettings-clearColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the color buffer is cleared before the panel is rendered.

This is typically used when a RenderTexture is assigned to PanelSettings.targetTexture. Otherwise, if a camera already clears the color of the render target, avoid redundant clearing to optimize performance.
