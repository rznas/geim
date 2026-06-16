<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteShapeParameters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Input parameters for the SpriteShape tessellator.

### Properties

| Property | Description |
| --- | --- |
| adaptiveUV | If enabled, the tessellator will adapt the size of the quads based on the height of the edge. |
| angleThreshold | The threshold of the angle that indicates whether it is a corner or not. |
| bevelCutoff | The threshold of the angle that decides if it should be tessellated as a curve or a corner. |
| bevelSize | The radius of the curve to be tessellated. |
| borderPivot | The local displacement of the Sprite when tessellated. |
| carpet | If true, the Shape will be tessellated as a closed form. |
| fillScale | The scale to be used to calculate the UVs of the fill texture. |
| fillTexture | The texture to be used for the fill of the SpriteShape. |
| smartSprite | If enabled the tessellator will consider creating corners based on the various input parameters. |
| splineDetail | The tessellation quality of the input Spline that determines the complexity of the mesh. |
| spriteBorders | The borders to be used for calculating the uv of the edges based on the border info found in Sprites. |
| stretchUV | Stretch the UV mapping for the Fill texture. |
| transform | The world space transform of the GameObject used for calculating the UVs of the Fill texture. |
