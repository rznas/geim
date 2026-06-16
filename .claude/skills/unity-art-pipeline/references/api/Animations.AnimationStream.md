<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The stream of animation data passed from one Playable to another.

The AnimationStream structure is passed through the animation Playable structures, like AnimationClipPlayable and AnimationMixerPlayable. They can be modified when used with an IAnimationJobPlayable, like the AnimationScriptPlayable.

The Playables implementing IAnimationJobPlayable take a custom C# job, which must implement IAnimationJob, and the AnimationStream is then passed to its callbacks during the animation processing pass.

Additional resources: IAnimationJob, AnimationScriptPlayable, TransformStreamHandle, PropertyStreamHandle, TransformSceneHandle, and PropertySceneHandle.

### Properties

| Property | Description |
| --- | --- |
| angularVelocity | Gets or sets the avatar angular velocity for the evaluated frame. |
| deltaTime | Gets the delta time for the evaluated frame. (Read Only) |
| inputStreamCount | Gets the number of input streams. (Read Only) |
| isHumanStream | Returns true if the stream is from a humanoid avatar; false otherwise. (Read Only) |
| isValid | Returns true if the stream is valid; false otherwise. (Read Only) |
| rootMotionPosition | Gets the root motion position for the evaluated frame. (Read Only) |
| rootMotionRotation | Gets the root motion rotation for the evaluated frame. (Read Only) |
| velocity | Gets or sets the avatar velocity for the evaluated frame. |

### Public Methods

| Method | Description |
| --- | --- |
| AsHuman | Gets the same stream, but as an AnimationHumanStream. |
| CopyAnimationStreamMotion | Deep copies motion from a source animation stream to the current animation stream. |
| GetInputStream | Gets the AnimationStream of the playable input at index. |
| GetInputWeight | Gets the weight of the Playable connected at a specific input index. |
