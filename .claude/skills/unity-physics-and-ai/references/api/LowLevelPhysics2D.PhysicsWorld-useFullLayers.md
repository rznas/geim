<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld-useFullLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates if the option of PhysicsLowLevelSettings2D.useFullLayers is active or not. If no PhysicsLowLevelSettings2D asset is assigned, this option will return false (inactive). When active, the 64-bit layers are used (see PhysicsLowLevelSettings2D.physicsLayerNames) for property drawers and PhysicsLayers.GetLayerMask. When inactive, the 32-bit layers are used (see UnityEngine.LayerMask) for property drawers and PhysicsLayers.GetLayerMask. In all cases, the physics system itself will always use the full 64-bit layers assigned, however when using 32-bit layers, the top 32-bits will be set to zero.
