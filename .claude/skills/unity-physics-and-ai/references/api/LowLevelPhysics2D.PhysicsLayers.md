<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This provides a common method to retrieving layer information. If a PhysicsLowLevelSettings2D asset is assigned then the full layers (PhysicsLowLevelSettings2D.physicsLayerNames) will be used if PhysicsLowLevelSettings2D.useFullLayers is also active. If no PhysicsLowLevelSettings2D asset is assigned then the global layers (See UnityEngine.LayerMask) will be used.

### Static Properties

| Property | Description |
| --- | --- |
| InvalidLayerOrdinal | Indicates an invalid layer ordinal. This is typically used when retrieving a layer ordinal but a name could not be found. |

### Static Methods

| Method | Description |
| --- | --- |
| GetLayerMask | Get a PhysicsMask for the specified layer name(s). |
| GetLayerName | Get a layer name for the specified layer ordinal (index). |
| GetLayerOrdinal | Get a layer ordinal (index) for the specified layer name. This is not a 32-bit mask but simply the layer ordinal (index) associated with the specified layer name. |
