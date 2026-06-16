<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | Terrain that defines terrain space for this PaintContext. |
| pixelRect | Pixel rectangle to edit in the target terrain texture. |
| targetTextureWidth | Width of the target terrain texture (per Terrain). |
| targetTextureHeight | Height of the target terrain texture (per Terrain). |
| sharedBoundaryTexel | Whether to stretch the Textures so that edge texels lie on the Terrain boundary, and are shared with connected Terrains. |
| fillOutsideTerrain | Whether to fill empty space outside of the Terrain tiles with data from the nearest tile. |

### Description

Creates a new PaintContext, to edit a target texture on a Terrain, in a region defined by pixelRect.

This constructor finds all Terrain tiles that touch the pixelRect, searching across adjacent connected Terrain tiles. It also calculates the relevant regions on each Terrain, as well as the transforms between them.

 Additional resources: PaintContext.
