<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.GetTransformWriteTweens.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**NativeArray<TransformWriteTween>** A world-owned view of the existing Transform Write Tweens that are handled per-frame. Contents are invalidated by the next simulation step.

### Description

Gets all the existing Transform Write Tweens that are handled per-frame.

 The returned NativeArray_1 aliases the per-frame internal buffer owned by the world; it does not own its memory (so disposing it does nothing). The contents are only valid until the next simulation step runs, after which the buffer may be reused or destroyed. If a longer-lived copy is required, copy the contents into a caller-owned NativeArray_1.
