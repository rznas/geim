<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteShapeUtility.GenerateSpriteShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderer | SpriteShapeRenderer to which the generated geometry is fed to. |
| shapeParams | Input parameters for the SpriteShape tessellator. |
| points | A list of control points that describes the shape. |
| metaData | Additional data about the shape's control point. This is useful during tessellation of the shape. |
| sprites | The list of Sprites that could be used for the edges. |
| corners | The list of Sprites that could be used for the corners. |
| angleRange | A parameter that determins how to tessellate each of the edge. |

### Description

Generate a mesh based on input parameters.
