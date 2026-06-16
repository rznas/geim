<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.PixelPerfectRendering-pixelSnapSpacing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

To achieve a pixel perfect render, Sprites must be displaced to discrete positions at render time. This value defines the minimum distance between these positions. This doesn’t affect the GameObject's transform position.

By default, a Sprite can be moved freely along all axes of the world space. By setting this property to a non-zero positive value, Sprite movement will always appear displaced to multiples of this value at render time.

For a pixel perfect render, this value should be set to the size of a single on-screen pixel. Calculate this value with Camera.orthographicSize * 2.0 / Camera.pixelHeight , when viewing the world space through the Orthographic Camera.

This property is to be used together with the PixelPerfectCamera component for complete configuration of pixel perfect rendering.
