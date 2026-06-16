<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DepthTextureMode.MotionVectors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether motion vectors should be rendered (if possible).

When set, the camera renders another pass (after opaque but before Image Effects): First, a full screen pass is rendered to reconstruct screen-space motion from the camera movement, then, any moving objects have a custom pass to render their object-specific motion. The buffer uses the RenderTextureFormat.RGHalf format, so this feature only works on platforms where this format is supported.

Motion vectors capture the per-pixel, screen-space motion of objects from one frame to the next. Use this velocity to reconstruct previous positions, calculate blur for motion blur, or implement temporal anti-aliasing.

To access the generated motion vectors, you can simple read the texture sampler: sampler2D_half _CameraMotionVectorsTexture in any opaque Image Effect.

Additional resources: Renderer.motionVectorGenerationMode, Camera.depthTextureMode, SkinnedMeshRenderer.skinnedMotionVectors, PassType.MotionVectors, SystemInfo.supportsMotionVectors.
