<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides an asset that assigns animation curves to animatable properties.

The Animation component and the Animator component use the AnimationClip asset to animate GameObject and Component properties.

**Supported Animatable Types**

When you create an AnimationClip asset with an Animation component, you must set `legacy` to true. Use the Animation component to animate the following public or serialized properties for a GameObject or Component:

- float values
- boolean values (casted to float)
- integer values (casted to float)
- discrete integer values (using the attribute DiscreteEvaluationAttribute and reinterpreted to float)

For `legacy` clips, use the SetCurve method to assign new curves in the Editor and at runtime.

When you create an AnimationClip asset for an Animator component, you can animate the following public or serialized properties:

- float values
- boolean values (cast as float)
- integer values (cast as float)
- discrete integer values (use the DiscreteEvaluationAttribute attribute reinterpreted as a float)
- Object reference values (saved as an ObjectReferenceKeyframe)

**Curve creation** 
 
In the Editor, it is recommended that you use the AnimationUtility.SetEditorCurve and AnimationUtility.SetEditorCurves methods to assign one or many AnimationCurve objects for each float property and each boolean, integer, or discrete integer reinterpreted as a float.

In the Editor and at runtime, you can use the SetCurve method to assign an AnimationCurve to an animation clip. You can also modify an animation clip at runtime but this modification is only recognized by the Animation component. The Animator component requires that clips are compiled to an optimized representation and this compilation process is not available at runtime. 

Use the AnimationUtility.SetObjectReferenceCurve and AnimationUtility.SetObjectReferenceCurves methods to create and assign new ObjectReferenceKeyframe arrays of Object reference properties. **Note:** This is only supported by the Animator component.

**Curve query**

Use the AnimationUtility.GetEditorCurve method to retrieve an AnimationCurve for a float property.

Use the AnimationUtility.GetObjectReferenceCurve method to retrieve an ObjectReferenceKeyframe array for an Object reference property. **Note:** This is only supported by the Animator component.

**Animation Events management**

In the editor, use the AnimationUtility.SetAnimationEvents method to set or replace the AnimationEvent array for the AnimationClip. Use the AnimationUtility.GetAnimationEvents method to retrieve the AnimationEvent array from the AnimationClip.

Additional resources: Animation Animator AnimationCurve ObjectReferenceKeyframe AnimationEvent

```csharp
// Create a new MonoBehaviour in your project and paste in the following code.

using UnityEngine;

// The example creates a new MonoBehaviour that is used alongside a Camera component.
// At runtime, the component will create a procedural clip to animate the Camera field of view
// property and automatically play that clip on an Animation component.
[RequireComponent(typeof(Camera))]
public class ProceduralFieldOfViewAnimation : MonoBehaviour
{
    void OnEnable()
    {
        AnimationClip clip = new AnimationClip();
        AnimationCurve curve = AnimationCurve.Linear(0.0f, 60.0f, 10.0f, 90.0f);
        clip.SetCurve("", typeof(Camera), "field of view", curve);
        clip.legacy = true;

        if (!TryGetComponent<Animation>(out var animation))
            animation = gameObject.AddComponent<Animation>();

        animation.AddClip(clip, "animfov");
        animation.Play("animfov");
    }
}
```

```csharp
using UnityEditor;
using UnityEngine;

static class AnimationClipWithAnimationCurvesExample
{
    // This example creates an AnimationClip with a single frame that captures the pose of a GameObject hierarchy.
    // The clip is saved as an asset in the project.
    [MenuItem("Example/Create Animation Clip Pose From GameObject")]
    static void CreateAnimationClipPoseFromGameObject()
    {
        var selectedGameObject = Selection.activeGameObject;
        if (selectedGameObject == null)
        {
            Debug.LogError("Please select a GameObject to create a clip for.");
            return;
        }

        AnimationClip clip = new AnimationClip();

        var transforms = selectedGameObject.GetComponentsInChildren<Transform>();
        var numberOfCurves = transforms.Length * 10; // 3 for position, 4 for rotation, 3 for scale

        var bindings = new EditorCurveBinding[numberOfCurves];
        var curves = new AnimationCurve[numberOfCurves];

        for (int i = 0; i < transforms.Length; ++i)
        {
            var startIndex = i * 10;

            var transform = transforms[i];
            var path = AnimationUtility.CalculateTransformPath(transform, selectedGameObject.transform);

            var index = startIndex;
            bindings[index++] = EditorCurveBinding.FloatCurve(path, typeof(Transform), "m_LocalPosition.x");
            bindings[index++] = EditorCurveBinding.FloatCurve(path, typeof(Transform), "m_LocalPosition.y");
            bindings[index++] = EditorCurveBinding.FloatCurve(path, typeof(Transform), "m_LocalPosition.z");

            bindings[index++] = EditorCurveBinding.FloatCurve(path, typeof(Transform), "m_LocalRotation.x");
            bindings[index++] = EditorCurveBinding.FloatCurve(path, typeof(Transform), "m_LocalRotation.y");
            bindings[index++] = EditorCurveBinding.FloatCurve(path, typeof(Transform), "m_LocalRotation.z");
            bindings[index++] = EditorCurveBinding.FloatCurve(path, typeof(Transform), "m_LocalRotation.w");

            bindings[index++] = EditorCurveBinding.FloatCurve(path, typeof(Transform), "m_LocalScale.x");
            bindings[index++] = EditorCurveBinding.FloatCurve(path, typeof(Transform), "m_LocalScale.y");
            bindings[index] = EditorCurveBinding.FloatCurve(path, typeof(Transform), "m_LocalScale.z");

            transform.GetLocalPositionAndRotation(out var localPosition, out var localRotation);
            var localScale = transform.localScale;

            index = startIndex;
            curves[index++] = AnimationCurve.Constant(0f, 1f, localPosition.x);
            curves[index++] = AnimationCurve.Constant(0f, 1f, localPosition.y);
            curves[index++] = AnimationCurve.Constant(0f, 1f, localPosition.z);

            curves[index++] = AnimationCurve.Constant(0f, 1f, localRotation.x);
            curves[index++] = AnimationCurve.Constant(0f, 1f, localRotation.y);
            curves[index++] = AnimationCurve.Constant(0f, 1f, localRotation.z);
            curves[index++] = AnimationCurve.Constant(0f, 1f, localRotation.w);

            curves[index++] = AnimationCurve.Constant(0f, 1f, localScale.x);
            curves[index++] = AnimationCurve.Constant(0f, 1f, localScale.y);
            curves[index] = AnimationCurve.Constant(0f, 1f, localScale.z);
        }

        AnimationUtility.SetEditorCurves(clip, bindings, curves);

        AssetDatabase.CreateAsset(clip, AssetDatabase.GenerateUniqueAssetPath($"Assets/{selectedGameObject.name}-Pose.anim"));
    }
}
```

```csharp
using UnityEditor;
using UnityEngine;

static class AnimationClipWithObjectReferenceKeyframesExample
{
    // This example creates an AnimationClip of a sequence of sprites selected
    // in the project view. The clip is saved as an asset in the project.
    [MenuItem("Example/Create Flip Book Animation Clip From Sprites")]
    static void CreateFlipBookAnimationClipFromSprites()
    {
        var selectedSprites = Selection.GetFiltered<Sprite>(SelectionMode.Unfiltered);
        if (selectedSprites == null || selectedSprites.Length == 0)
        {
            Debug.LogError("Please select sprites in the project view to create a clip for.");
            return;
        }

        AnimationClip clip = new AnimationClip();

        var spriteCurve = new ObjectReferenceKeyframe[selectedSprites.Length];
        for (int i = 0; i < selectedSprites.Length; ++i)
        {
            var sprite = selectedSprites[i];
            spriteCurve[i] = new ObjectReferenceKeyframe
            {
                time = i/clip.frameRate,
                value = sprite
            };
        }

        var spriteBinding = EditorCurveBinding.PPtrCurve("", typeof(SpriteRenderer), "m_Sprite");
        AnimationUtility.SetObjectReferenceCurve(clip, spriteBinding, spriteCurve);

        AssetDatabase.CreateAsset(clip, AssetDatabase.GenerateUniqueAssetPath($"Assets/FlipBookClip.anim"));
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| empty | Returns true if the animation clip has no curves and no events. |
| events | Animation Events for this animation clip. |
| frameRate | Frame rate at which keyframes are sampled. (Read Only) |
| hasGenericRootTransform | Returns true if the Animation has animation on the root transform. |
| hasMotionCurves | Returns true if the AnimationClip has root motion curves. |
| hasMotionFloatCurves | Returns true if the AnimationClip has editor curves for its root motion. |
| hasRootCurves | Returns true if the AnimationClip has root Curves. |
| humanMotion | Returns true if the animation contains curve that drives a humanoid rig. |
| legacy | Set to true if the AnimationClip will be used with the Legacy Animation component ( instead of the Animator ). |
| length | Animation length in seconds. (Read Only) |
| localBounds | AABB of this Animation Clip in local space of Animation component that it is attached too. |
| wrapMode | Sets the default wrap mode used in the animation state. |

### Constructors

| Constructor | Description |
| --- | --- |
| AnimationClip | Creates a new animation clip. |

### Public Methods

| Method | Description |
| --- | --- |
| AddEvent | Adds an animation event to the clip. |
| ClearCurves | Clears all curves from the clip. |
| EnsureQuaternionContinuity | Realigns quaternion keys to ensure shortest interpolation paths. |
| SampleAnimation | Samples an animation at a given time for any animated properties. |
| SetCurve | Assigns the curve to animate a specific property. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
