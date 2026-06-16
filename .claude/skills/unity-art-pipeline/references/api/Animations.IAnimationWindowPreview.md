<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.IAnimationWindowPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows a class to modify how an AnimationClip is sampled in the Animation window by providing its own Playable nodes to the Animation window PlayableGraph. The class must also inherit from MonoBehaviour.

Additional resources: AnimationScriptPlayable

```csharp
using UnityEngine;
using UnityEngine.Animations;
using UnityEngine.Playables;[RequireComponent(typeof(Animator))]
public class ExampleScript : MonoBehaviour, IAnimationWindowPreview
{
    public Vector3 offset = Vector3.zero;    private AnimationScriptPlayable m_Playable;
    private AnimationJob m_Job;
    private Vector3 m_CurrentOffset;    struct AnimationJob : IAnimationJob
    {
        public TransformStreamHandle transform;
        public Vector3 offset;        public void ProcessRootMotion(AnimationStream stream)
        {
            Vector3 position = transform.GetLocalPosition(stream);
            position += offset;            transform.SetLocalPosition(stream, position);
        }        public void ProcessAnimation(AnimationStream stream)
        {
        }
    }    public void StartPreview()
    {
        m_CurrentOffset = offset;
    }    public void StopPreview()
    {
    }    public void UpdatePreviewGraph(PlayableGraph graph)
    {
        if (m_CurrentOffset != offset)
        {
            m_Job.offset = offset;
            m_Playable.SetJobData(m_Job);            m_CurrentOffset = offset;
        }
    }    public Playable BuildPreviewGraph(PlayableGraph graph, Playable input)
    {
        Animator animator = GetComponent<Animator>();        m_Job = new AnimationJob();
        m_Job.transform = animator.BindStreamTransform(transform);
        m_Job.offset = offset;        m_Playable = AnimationScriptPlayable.Create(graph, m_Job, 1);        graph.Connect(input, 0, m_Playable, 0);        return m_Playable;
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| BuildPreviewGraph | Appends custom Playable nodes to the Animation window PlayableGraph. |
| StartPreview | Notification callback when the Animation window starts previewing an AnimationClip. |
| StopPreview | Notification callback when the Animation window stops previewing an AnimationClip. |
| UpdatePreviewGraph | Notification callback when the Animation Window updates its PlayableGraph before sampling an AnimationClip. |
