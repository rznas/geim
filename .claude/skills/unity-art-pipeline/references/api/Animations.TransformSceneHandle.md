<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.TransformSceneHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handle to read position, rotation and scale of an object in the Scene.

TransformSceneHandle are read-only.

A TransformSceneHandle is a safe handle on a TransformAccess. The Animator used to create this handle manages the validity of this handle.

```csharp
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Animations;public struct TransformSceneHandleJob : IAnimationJob
{
    public TransformSceneHandle handle;    public void ProcessRootMotion(AnimationStream stream)
    {
        // Log the local position.
        var position = handle.GetLocalPosition(stream);
        Debug.LogFormat("Position: {0}", position);        // Log the local rotation (converted from euler).
        var rotation = handle.GetLocalRotation(stream);
        Debug.LogFormat("Rotation: {0}", rotation.eulerAngles);        // Log the local scale.
        var scale = handle.GetLocalScale(stream);
        Debug.LogFormat("Scale: {0}", scale);
    }    public void ProcessAnimation(AnimationStream stream)
    {
    }
}[RequireComponent(typeof(Animator))]
public class TransformSceneHandleExample : MonoBehaviour
{
    public Transform sceneTransform;    PlayableGraph m_Graph;
    AnimationScriptPlayable m_AnimationScriptPlayable;    void Start()
    {
        if (sceneTransform == null)
            return;        var animator = GetComponent<Animator>();        m_Graph = PlayableGraph.Create("TransformSceneHandleExample");
        var output = AnimationPlayableOutput.Create(m_Graph, "output", animator);        var animationJob = new TransformSceneHandleJob();
        animationJob.handle = animator.BindSceneTransform(sceneTransform);
        m_AnimationScriptPlayable = AnimationScriptPlayable.Create(m_Graph, animationJob);        output.SetSourcePlayable(m_AnimationScriptPlayable);
        m_Graph.Play();
    }    void OnDisable()
    {
        if (sceneTransform == null)
            return;        m_Graph.Destroy();
    }
}
```

Additional resources: AnimatorJobExtensions.BindSceneTransform, PropertySceneHandle, PropertyStreamHandle, and TransformStreamHandle.

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
| GetRotation | Gets the rotation of the transform in world space. |
| IsValid | Returns whether this is a valid handle. |
