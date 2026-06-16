<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.BuildTransformPaintContextUVToPaintContextUV.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | Source PaintContext. |
| dst | Destination PaintContext. |
| scaleOffset | ScaleOffset transform. |

### Description

Builds a Scale & Offset transform to convert between one PaintContext's UV space and another PaintContext's UV space.

This method provides functionality that you can use when you must perform tasks such as rendering to one PaintContext when reading a texture from another PaintContext. You can apply the returned transform to convert the UVs from one PaintContext to another.

 The returned scaleOffset vector is in the same format as used by the TEX_TRANSFORM macro:
 `dstUV.uv = srcUV.uv * scaleOffset.xy + scaleOffset.zw`
