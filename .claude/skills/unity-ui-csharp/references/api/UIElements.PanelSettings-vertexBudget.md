<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelSettings-vertexBudget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The expected number of vertices that will be used by this panel.

A value of 0 means that the UI renderer will use its own default. If this hint is set too high, extra CPU and GPU memory may be allocated without actually being used. If set too low, more vertex buffers may be required, which may increase the number of draw calls and hinder performance. Changing this setting after initialization should be avoided because it resets the UI renderer.
