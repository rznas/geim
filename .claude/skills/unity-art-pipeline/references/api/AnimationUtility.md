<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor utility functions for modifying animation clips.

### Static Properties

| Property | Description |
| --- | --- |
| onCurveWasModified | Called when an animation curve, in an animation clip, is modified. |

### Static Methods

| Method | Description |
| --- | --- |
| CalculateTransformPath | Retrieves the path from the root Transform to the target Transform. |
| EditorCurveBindingsToGenericBindings | Converts EditorCurveBinding to GenericBinding. |
| GetAnimatableBindings | Retrieves the animatable bindings for a specific GameObject. |
| GetAnimatedObject | Retrieves the animated object that the binding points to. |
| GetAnimationClips | Retrieves an array of animation clips associated with a GameObject or component. GetAnimationClips(Animation) is obsolete and has been replaced with GetAnimationClips(GameObject). |
| GetAnimationEvents | Retrieves all animation events associated with an animation clip. |
| GetCurveBindings | Retrieves the float curve bindings in an animation clip. |
| GetDiscreteIntValue | Retrieves the discrete integer value that the binding points to. |
| GetEditorCurve | Retrieves the float curve that the binding points to. |
| GetFloatValue | Retrieves the float value that the binding points to. |
| GetKeyBroken | Retrieves the broken tangent flag for a specfic keyframe. |
| GetKeyLeftTangentMode | Retrieves the left tangent mode of the keyframe at a specific index. |
| GetKeyRightTangentMode | Retrieves the right tangent mode of the keyframe at a specific index. |
| GetObjectReferenceCurve | Retrieves the object reference curve that the binding points to. |
| GetObjectReferenceCurveBindings | Retrieves the object reference curve bindings stored in the animation clip. |
| GetObjectReferenceValue | Retrieves the object value that the binding points to. |
| PropertyModificationToEditorCurveBinding | Use this method to convert a PropertyModification to an EditorCurveBinding. |
| SetAdditiveReferencePose | Sets the additive reference pose from referenceClip at time for animation clip clip. |
| SetAnimationClips | Sets the array of animation clips to be referenced in the Animation component. |
| SetAnimationEvents | Replaces all animation events in the animation clip. |
| SetEditorCurve | Adds, modifies, or removes an editor float curve in an animation clip. |
| SetEditorCurves | Adds, modifies, or removes multiple editor float curves in an animation clip. |
| SetKeyBroken | Change the specified keyframe broken tangent flag. |
| SetKeyLeftTangentMode | Change the specified keyframe tangent mode. |
| SetKeyRightTangentMode | Change the specified keyframe tangent mode. |
| SetObjectReferenceCurve | Adds, modifies, or removes an object reference curve in an animation clip. |
| SetObjectReferenceCurves | Adds, modifies, or removes object references curve in an animation clip. |

### Delegates

| Delegate | Description |
| --- | --- |
| OnCurveWasModified | Triggered when an animation curve, in an animation clip, has been modified. |
