<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Canvas-useReflectionProbes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables reflections on the Canvas when Canvas.renderMode is set to World Space.

When enabled, the Canvas is registered with the Reflection Probe system. The system selects the most appropriate reflection probe based on the Canvas's world position and binds it to all shaders on the Canvas. All shaders on the Canvas can then access the reflection probe cube map and the normal vector to calculate reflections accurately.
