<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationScriptPlayable.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graph | The PlayableGraph object that will own the AnimationScriptPlayable. |
| job | The IAnimationJob to execute when processing the playable. |
| inputCount | The number of inputs on the playable. |

### Returns

**AnimationScriptPlayable** A new AnimationScriptPlayable linked to the PlayableGraph.

### Description

Creates an AnimationScriptPlayable in the PlayableGraph.

This playable contains a job implementing an IAnimationJob. This interface defines two methods that will be called while processing the PlayableGraph.

Here is an example of how to create an AnimationScriptPlayable with a simple IAnimationJob:

```csharp
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Animations;public struct AnimationJob : IAnimationJob
{
    public int userData;    public void ProcessRootMotion(AnimationStream stream)
    {
        // This method is called during the root motion process pass.
    }    public void ProcessAnimation(AnimationStream stream)
    {
        // This method is called during the animation process pass.
        Debug.Log(string.Format("Value of the userData: {0}", userData));
    }
}[RequireComponent(typeof(Animator))]
public class AnimationScriptExample : MonoBehaviour
{
    PlayableGraph m_Graph;
    AnimationScriptPlayable m_AnimationScriptPlayable;    void OnEnable()
    {
        m_Graph = PlayableGraph.Create("AnimationScriptExample");
        var output = AnimationPlayableOutput.Create(m_Graph, "ouput", GetComponent<Animator>());        var animationJob = new AnimationJob();
        m_AnimationScriptPlayable = AnimationScriptPlayable.Create(m_Graph, animationJob);        output.SetSourcePlayable(m_AnimationScriptPlayable);
        m_Graph.Play();
    }    void Update()
    {
        var animationJob = m_AnimationScriptPlayable.GetJobData<AnimationJob>();
        ++animationJob.userData;
        m_AnimationScriptPlayable.SetJobData(animationJob);
    }    void OnDisable()
    {
        m_Graph.Destroy();
    }
}
```

Additional resources: IAnimationJob, AnimatorJobExtensions.
