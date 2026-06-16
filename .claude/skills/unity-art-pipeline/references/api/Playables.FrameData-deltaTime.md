<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.FrameData-deltaTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The interval between this frame and the preceding frame. The interval is unscaled and expressed in seconds.

To time-scale the interval, multiple the interval by FrameData.effectiveSpeed.

```csharp
//Attach this script to a GameObject that has an Animator and set the Animator field.
using UnityEngine;
using UnityEngine.Animations;
using UnityEngine.Playables;public class MyMonoBehaviour : MonoBehaviour
{
    [SerializeField]
    private Animator m_Animator;    private PlayableGraph m_Graph;
    private void Awake()
    {
        m_Graph = PlayableGraph.Create();
        m_Graph.SetTimeUpdateMode(DirectorUpdateMode.GameTime);        var scriptPlayable = ScriptPlayable<MyPlayableBehaviour>.Create(m_Graph);        // Sets game time's scale, as well as custom playable's speed.
        Time.timeScale = 10f;
        scriptPlayable.SetSpeed(0.5f);        var playableOutput = AnimationPlayableOutput.Create(m_Graph, "MyPlayableOutput", m_Animator);
        playableOutput.SetSourcePlayable(scriptPlayable, 0);        m_Graph.Play();
    }    private void OnDestroy()
    {
        if (m_Graph.IsValid())
            m_Graph.Destroy();
    }
}public sealed class MyPlayableBehaviour : PlayableBehaviour
{
    public override void PrepareFrame(Playable playable, FrameData info)
    {
        base.PrepareFrame(playable, info);        // info.deltaTime is not scaled, and so is 10 times smaller than Time.deltaTime
        // info.effectiveSpeed is equal to 5 (10 * 0.5). Time.timeScale is accounted for because we use DirectorUpdateMode.GameTime.
        // If we had used DirectorUpdateMode.UnscaledGameTime, info.effectiveSpeed would have been equal to 0.5.
        Debug.Log($"info.deltaTime = {info.deltaTime}, speed {info.effectiveSpeed} Time.deltaTime = {Time.deltaTime}");
    }
}
```
