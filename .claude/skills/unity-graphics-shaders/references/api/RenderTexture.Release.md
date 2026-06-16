<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture.Release.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Releases the RenderTexture.

This function releases the hardware resources used by the render texture. The texture itself is not destroyed, and will be automatically created again when being used.

As with other "native engine object" types, it is important to pay attention to the lifetime of any render textures and release them when you are finished using them, as they will not be garbage collected like normal managed types.

Additional resources: Create, IsCreated functions.
