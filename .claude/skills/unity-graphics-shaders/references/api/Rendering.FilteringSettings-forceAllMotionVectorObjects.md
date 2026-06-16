<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.FilteringSettings-forceAllMotionVectorObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines if Unity renders not moving GameObjects in motion vector pass. This refers to GameObjects that have an active Motion Vector pass assigned to their Material and did not move since the last frame. This flag can be used to render both moving objects and not moving objects in the motion vector pass to populate object motion data and scene depth data together.

Additional resources: ScriptableRenderContext.DrawRenderers, Creating a simple render loop in a custom render pipeline.
