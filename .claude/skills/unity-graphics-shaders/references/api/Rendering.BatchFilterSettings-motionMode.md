<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchFilterSettings-motionMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies how to generate motion vectors in this draw range.

This corresponds to Renderer.motionVectorGenerationMode.

- If you set this to MotionVectorGenerationMode.Camera, Unity doesn't render the draw commands in per-object motion vector passes, regardless of each draw command's BatchDrawCommand.flags.
- If you set this to MotionVectorGenerationMode.Object, Unity renders the draw commands in per-object motion vector passes if the draw command has BatchDrawCommandFlags.HasMotion set.
- If you set this to MotionVectorGenerationMode.ForceNoMotion, Unity renders the draw commands in per-object motion vector passes if the draw command has BatchDrawCommandFlags.HasMotion set, and it should output a zero motion vector. This behavior relies on the used shader being implemented correctly.
