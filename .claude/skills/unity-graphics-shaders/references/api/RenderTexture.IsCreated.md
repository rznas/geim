<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture.IsCreated.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is the render texture actually created?

RenderTexture constructor does not actually create the hardware texture; by default the texture is created the first time it is set active. `IsCreated` returns `true` if the hardware resources for this render are created.

Additional resources: Create, Release functions.
