<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-motionVectorGenerationMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the mode for motion vector rendering.

Motion vectors track the per-pixel object velocity from one frame to the next. Using this information you can apply specific Image Effects such as motion blur or temporal anti-aliasing.

MotionVectorGenerationMode.Camera: Use only camera movement to track motion. MotionVectorGenerationMode.Object: This object will have a per-object motion vector pass rendered. MotionVectorGenerationMode.ForceNoMotion: This object will have zero motion rendered.

Additional resources: DepthTextureMode.MotionVectors, SkinnedMeshRenderer.skinnedMotionVectors, PassType.MotionVectors, SystemInfo.supportsMotionVectors.
