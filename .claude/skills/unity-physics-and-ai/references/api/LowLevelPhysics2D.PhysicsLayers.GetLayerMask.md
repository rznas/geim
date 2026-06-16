<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsLayers.GetLayerMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerNames | The layer names (case sensitive) to find a combined physics mask for. |

### Returns

**PhysicsMask** The combined physics mask associated with the specified layer names or, if not found, PhysicsMask.None will be returned in which case a console warning will also be produced.

### Description

Get a PhysicsMask for the specified layer name(s).
