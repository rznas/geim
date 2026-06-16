<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StaticBatchingUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

StaticBatchingUtility can prepare your objects to take advantage of Unity's static batching.

This step is useful as a performance optimization allowing engine to reduce number of draw-calls dramatically, but keep amount of rendered geometry intact.

By calling one of the Combine methods you will create an internal mesh which will contain combined geometry, however each original GameObject will be present in the Scene and will be culled individually. The fact that GameObjects can be culled individually allows run-time to render the same amount of geometry as it would without batching, unlike combining geometry in the modeling tool. Combining geometry in the modeling tool prevents efficient culling and results in much higher amount of geometry being rendered.

Note that you do not need to call Combine methods on objects which were already marked as "Static" in the Editor. They will be prepared for static batching automatically during the Build Player step.

**IMPORTANT:** only objects with the same material can be batched, thus it is useful to share as many textures/material as you can.

### Static Methods

| Method | Description |
| --- | --- |
| Combine | Combines all children GameObjects of the staticBatchRoot for static batching. |
