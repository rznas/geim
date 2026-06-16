<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsLayers.GetLayerOrdinal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerName | The layer name (case sensitive) to find the layer ordinal for. |

### Returns

**int** The layer ordinal associated with the specified layer name or, if not found, PhysicsLayers.InvalidLayerOrdinal will be returned in which case a console warning will also be produced.

### Description

Get a layer ordinal (index) for the specified layer name. This is not a 32-bit mask but simply the layer ordinal (index) associated with the specified layer name.
