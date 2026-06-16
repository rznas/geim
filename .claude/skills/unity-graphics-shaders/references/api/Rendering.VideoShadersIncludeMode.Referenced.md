<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VideoShadersIncludeMode.Referenced.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Include video shaders in builds when referenced by scenes.

If a VideoPlayer or VideoClip is in a scene, video shaders are included in the build.

**Note:** Class references are not inspected during the build. If you create a VideoPlayer through scripting and you are not using a VideoClip, use the VideoShadersIncludeMode.Always mode.
