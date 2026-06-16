<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightmapParameters-directLightQuality.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of rays used for lights with an area. Allows for accurate soft shadowing.

This is the maximum number of rays to trace to any light with an area. Larger lights will require more rays to produce a noise-free output. The default value works with the majority of Scene setups, but you should increase this value if you observe noise. It can have a significant impact on performance, and for Scenes with lots of area lights, halving this value halves the baking time.
