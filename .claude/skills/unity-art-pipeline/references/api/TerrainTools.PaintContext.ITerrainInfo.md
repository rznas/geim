<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.ITerrainInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface that conveys information about a Terrain within the PaintContext area.

### Properties

| Property | Description |
| --- | --- |
| clippedPCPixels | PaintContext.pixelRect, clipped to this Terrain, in PaintContext pixel coordinates. (Read Only) |
| clippedTerrainPixels | PaintContext.pixelRect, clipped to this Terrain, in Terrain pixel coordinates. (Read Only) |
| gatherEnable | Controls gathering from this Terrain within the PaintContext. The default is true. |
| paddedPCPixels | Use this property to fill empty regions in PaintContext. It is the same as clippedPCPixels with padding around unconnected Terrain edges. (Read Only) |
| paddedTerrainPixels | Use this property to fill empty regions in PaintContext. It is the same as clippedTerrainPixels with padding around unconnected Terrain edges. (Read Only) |
| scatterEnable | Controls scattering to this Terrain within the PaintContext. The default is true. |
| terrain | The Terrain represented by this context. (Read Only) |
| userData | Modify this value, if required, to store and retrieve values relevant to the PaintContext operation. |
