<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ReflectionProbeTimeSlicingMode.IndividualFaces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Spreads the cubemap update over 14 frames, so that each face is rendered per frame. Generates mipmaps over the subsequent 8 frames. This option significantly reduces the impact on the framerate, but may lead to inconsistent results, particularly during dynamic lighting changes.
