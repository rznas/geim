<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsLayers.GetLayerName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerOrdinal | The layer ordinal (index). When using the full layers this should be within the range [0, 63] however if not then the range must be [0, 31]. |

### Returns

**string** The layer name. If no layer name is present then String.Empty is returned.

### Description

Get a layer name for the specified layer ordinal (index).
