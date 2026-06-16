<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.TransformStreamHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Position, rotation and scale of an object in the AnimationStream.

```csharp
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Animations;public struct TransformStreamHandleJob : IAnimationJob
{
    public TransformStreamHandle handle;
    public Vector3 position;
    public Vector3 rotation;
    public Vector3 scale;    public void ProcessRootMotion(AnimationStream stream)
    {
        // Set the new local position.
        handle.SetLocalPosition(stream, position);        // Set the new local rotation (converted from euler).
        handle.SetLocalRotation(stream, Quaternion.Euler(rotation));        // Set the new local scale.
        handle.SetLocalScale(stream, scale);
    }    public void ProcessAnimation(AnimationStream stream)
    {
    }
}[RequireComponent(typeof(Animator))]
public class TransformStreamHandleExample : MonoBehaviour
{
    public Vector3 position;
    public Vector3 rotation;
    public Vector3 scale = Vector3.one;    PlayableGraph m_Graph;
    AnimationScriptPlayable m_AnimationScriptPlayable;    void Start()
    {
        var animator = GetComponent<Animator>();        m_Graph = PlayableGraph.Create("TransformStreamHandleExample");
        var output = AnimationPlayableOutput.Create(m_Graph, "output", animator);        var animationJob = new TransformStreamHandleJob();
        animationJob.handle = animator.BindStreamTransform(gameObject.transform);
        m_AnimationScriptPlayable = AnimationScriptPlayable.Create(m_Graph, animationJob);        output.SetSourcePlayable(m_AnimationScriptPlayable);
        m_Graph.Play();
    }    void Update()
    {
        var animationJob = m_AnimationScriptPlayable.GetJobData<TransformStreamHandleJob>();
        animationJob.position = position;
        animationJob.rotation = rotation;
        animationJob.scale = scale;
        m_AnimationScriptPlayable.SetJobData(animationJob);
    }    void OnDisable()
    {
        m_Graph.Destroy();
    }
}
```

Additional resources: AnimatorJobExtensions.BindStreamTransform, PropertyStreamHandle, PropertySceneHandle, and TransformSceneHandle.

### Public Methods

| Method | Description |
| --- | --- |
| GetGlobalTR | Gets the position and scaled rotation of the transform in world space. |
| GetLocalPosition | Gets the position of the transform relative to the parent. |
| GetLocalRotation | Gets the rotation of the transform relative to the parent. |
| GetLocalScale | Gets the scale of the transform relative to the parent. |
| GetLocalToParentMatrix | Gets the local to parent matrix of the transform. |
| GetLocalToWorldMatrix | Gets the local to world matrix of the transform. |
| GetLocalTRS | Gets the position, rotation and scale of the transform relative to the parent. |
| GetPosition | Gets the position of the transform in world space. |
| GetPositionReadMask | Gets the position read mask of the transform. |
| GetRotation | Gets the rotation of the transform in world space. |
| GetRotationReadMask | Gets the rotation read mask of the transform. |
| GetScaleReadMask | Gets the scale read mask of the transform. |
| IsResolved | Returns whether this handle is resolved. |
| IsValid | Returns whether this is a valid handle. |
| Resolve | Bind this handle with an animated values from the AnimationStream. |
| SetGlobalTR | Sets the position and rotation of the transform in world space. |
| SetLocalPosition | Sets the position of the transform relative to the parent. |
| SetLocalRotation | Sets the rotation of the transform relative to the parent. |
| SetLocalScale | Sets the scale of the transform relative to the parent. |
| SetLocalTRS | Sets the position, rotation and scale of the transform relative to the parent. |
| SetPosition | Sets the position of the transform in world space. |
| SetRotation | Sets the rotation of the transform in world space. |
