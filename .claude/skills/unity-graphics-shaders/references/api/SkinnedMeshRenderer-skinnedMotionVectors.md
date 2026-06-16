<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SkinnedMeshRenderer-skinnedMotionVectors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether skinned motion vectors should be used for this renderer.

If set to true, the SkinnedMeshRenderer generates vectors using skinning data from the current and last frame to calculate the per-pixel object movement. This means that the motion vector buffer captures small object movements. (For example; a character moving an arm.)

Skinned motion vectors are important for characters with animation. There is a cost to skinned motion vectors, though; they require twice as much memory per skinned mesh because the graphics memory on the GPU becomes double buffered (one buffer for the current frame and one buffer for the previous frame). The buffers track motion between frames; the velocity is the current frame's position minus the last frame's position.

Additional resources: DepthTextureMode.MotionVectors, Renderer.motionVectorGenerationMode, PassType.MotionVectors, SystemInfo.supportsMotionVectors.
