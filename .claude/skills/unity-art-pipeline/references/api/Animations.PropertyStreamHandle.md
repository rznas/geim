<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.PropertyStreamHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handle for a Component property on an object in the AnimationStream.

```csharp
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Animations;public struct PropertyStreamHandleJob : IAnimationJob
{
    public PropertyStreamHandle handleR;
    public PropertyStreamHandle handleG;
    public PropertyStreamHandle handleB;
    public Color color;    public void ProcessRootMotion(AnimationStream stream)
    {
    }    public void ProcessAnimation(AnimationStream stream)
    {
        // Set the new light color.
        handleR.SetFloat(stream, color.r);
        handleG.SetFloat(stream, color.g);
        handleB.SetFloat(stream, color.b);
    }
}[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(Light))]
public class PropertyStreamHandleExample : MonoBehaviour
{
    public Color color = Color.white;    PlayableGraph m_Graph;
    AnimationScriptPlayable m_AnimationScriptPlayable;    void Start()
    {
        var animator = GetComponent<Animator>();        m_Graph = PlayableGraph.Create("PropertyStreamHandleExample");
        var output = AnimationPlayableOutput.Create(m_Graph, "output", animator);        var animationJob = new PropertyStreamHandleJob();
        animationJob.handleR = animator.BindStreamProperty(gameObject.transform, typeof(Light), "m_Color.r");
        animationJob.handleG = animator.BindStreamProperty(gameObject.transform, typeof(Light), "m_Color.g");
        animationJob.handleB = animator.BindStreamProperty(gameObject.transform, typeof(Light), "m_Color.b");
        m_AnimationScriptPlayable = AnimationScriptPlayable.Create(m_Graph, animationJob);        output.SetSourcePlayable(m_AnimationScriptPlayable);
        m_Graph.Play();
    }    void Update()
    {
        var animationJob = m_AnimationScriptPlayable.GetJobData<PropertyStreamHandleJob>();
        animationJob.color = color;
        m_AnimationScriptPlayable.SetJobData(animationJob);
    }    void OnDisable()
    {
        m_Graph.Destroy();
    }
}
```

Additional resources: AnimatorJobExtensions.BindStreamProperty, TransformStreamHandle, PropertySceneHandle, and TransformSceneHandle.

### Public Methods

| Method | Description |
| --- | --- |
| GetBool | Gets the boolean property value from a stream. |
| GetEntityId | Gets the EntityId property value from a stream. |
| GetFloat | Gets the float property value from a stream. |
| GetInt | Gets the integer property value from a stream. |
| GetReadMask | Gets the read mask of the property. |
| IsResolved | Returns whether or not the handle is resolved. |
| IsValid | Returns whether or not the handle is valid. |
| Resolve | Resolves the handle. |
| SetBool | Sets the boolean property value into a stream. |
| SetEntityId | Sets the EntityId property value into a stream. |
| SetFloat | Sets the float property value into a stream. |
| SetInt | Sets the integer property value into a stream. |
