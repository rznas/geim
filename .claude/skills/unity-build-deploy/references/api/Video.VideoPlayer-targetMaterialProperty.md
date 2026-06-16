<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-targetMaterialProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Material texture property which is targeted when VideoPlayer.renderMode is set to Video.VideoTarget.MaterialOverride.

The video is sent to every Material in the Renderer that has the targeted texture property. When this property is empty, the VideoPlayer uses the name of the material's first main texture. If no main texture is found, the VideoPlayer uses the name of the material's first texture property.
