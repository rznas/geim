<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationHumanStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The humanoid stream of animation data passed from one Playable to another.

The AnimationHumanStream structure is passed through the animation Playable structures, like AnimationClipPlayable and AnimationMixerPlayable. They can be modified when used with an IAnimationJobPlayable, like the AnimationScriptPlayable.

The Playables implementing IAnimationJobPlayable take a custom C# job, which must implement IAnimationJob, and the AnimationHumanStream is then passed to its callbacks during the animation processing pass.

Additional resources: AnimationStream, AnimationStream.isHumanStream, and AnimationStream.AsHuman().

### Properties

| Property | Description |
| --- | --- |
| bodyLocalPosition | The position of the body center of mass relative to the root. |
| bodyLocalRotation | The rotation of the body center of mass relative to the root. |
| bodyPosition | The position of the body center of mass in world space. |
| bodyRotation | The rotation of the body center of mass in world space. |
| humanScale | The scale of the Avatar. (Read Only) |
| isValid | Returns true if the stream is valid; false otherwise. (Read Only) |
| leftFootHeight | The left foot height from the floor. (Read Only) |
| leftFootVelocity | The left foot velocity from the last evaluated frame. (Read Only) |
| rightFootHeight | The right foot height from the floor. (Read Only) |
| rightFootVelocity | The right foot velocity from the last evaluated frame. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| GetGoalLocalPosition | Returns the position of this IK goal relative to the root. |
| GetGoalLocalRotation | Returns the rotation of this IK goal relative to the root. |
| GetGoalPosition | Returns the position of this IK goal in world space. |
| GetGoalPositionFromPose | Returns the position of this IK goal in world space computed from the stream current pose. |
| GetGoalRotation | Returns the rotation of this IK goal in world space. |
| GetGoalRotationFromPose | Returns the rotation of this IK goal in world space computed from the stream current pose. |
| GetGoalWeightPosition | Returns the position weight of the IK goal. |
| GetGoalWeightRotation | Returns the rotation weight of the IK goal. |
| GetHintPosition | Returns the position of this IK Hint in world space. |
| GetHintWeightPosition | Returns the position weight of the IK Hint. |
| GetMuscle | Returns the muscle value. |
| ResetToStancePose | Reset the current pose to the stance pose (T Pose). |
| SetGoalLocalPosition | Sets the position of this IK goal relative to the root. |
| SetGoalLocalRotation | Sets the rotation of this IK goal relative to the root. |
| SetGoalPosition | Sets the position of this IK goal in world space. |
| SetGoalRotation | Sets the rotation of this IK goal in world space. |
| SetGoalWeightPosition | Sets the position weight of the IK goal. |
| SetGoalWeightRotation | Sets the rotation weight of the IK goal. |
| SetHintPosition | Sets the position of this IK hint in world space. |
| SetHintWeightPosition | Sets the position weight of the IK Hint. |
| SetLookAtBodyWeight | Sets the LookAt body weight. |
| SetLookAtClampWeight | Sets the LookAt clamp weight. |
| SetLookAtEyesWeight | Sets the LookAt eyes weight. |
| SetLookAtHeadWeight | Sets the LookAt head weight. |
| SetLookAtPosition | Sets the look at position in world space. |
| SetMuscle | Sets the muscle value. |
| SolveIK | Execute the IK solver. |
