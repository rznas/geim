<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorldDefinition-transformTweening.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls if Transform tweening is used. Transform tweening is where bodies that have their PhysicsBody.transformObject set, write to the UnityEngine.Transform each frame depending on the specific body TransformWriteMode set. Regardless of this setting, Transform tweening is never used if the PhysicsWorld.simulationType set to PhysicsWorld.SimulationType.Update or PhysicsWorld.transformWriteMode is PhysicsWorld.TransformWriteMode.Off. See PhysicsWorld.transformTweening.
