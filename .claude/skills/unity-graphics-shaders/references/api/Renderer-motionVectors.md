<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-motionVectors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether this renderer has a per-object motion vector pass.

If set to true, this object will have a per-object motion vector pass rendererd (in addition to the default camera reconstruction motion vectors). Motion vectors track the per-pixel object velocity from one frame to the next. Using this information you can apply specific Image Effects such as motion blur or temporal anti-aliasing.

Additional resources: DepthTextureMode.MotionVectors, SkinnedMeshRenderer.skinnedMotionVectors, PassType.MotionVectors, SystemInfo.supportsMotionVectors.
