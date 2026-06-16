<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-clearStencilAfterLightingPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should the camera clear the stencil buffer after the deferred light pass?

When using Deferred Shading, the G-buffer and lighting passes use the stencil buffer. By default contents of the stencil buffer are preserved (not cleared) and end up containing information related to lights. Setting this property to `true` makes stencil be cleared to zero after the deferred light pass is done.

Typically if you're using deferred shading camera and UI elements with Masks (see UI.Mask), you'll want the stencil buffer to be cleared.
