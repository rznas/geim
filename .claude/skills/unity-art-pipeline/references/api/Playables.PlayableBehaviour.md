<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableBehaviour.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

PlayableBehaviour is the base class from which every custom playable script derives.

A PlayableBehaviour can be used to add user-defined behaviour to a PlayableGraph.

A PlayableBehaviour must be part of a branch of a PlayableGraph that is connected to an output to be active.

In the following example, two AnimationClip are controlled by two AnimationClipPlayable, which are blended by a AnimationMixerPlayable. A custom BlenderPlayableBehaviour is modifying the inputs weigth of the AnimationMixerPlayable every frame.

```csharp
using UnityEngine;
using UnityEngine.Animations;
using UnityEngine.Playables;public class BlenderPlayableBehaviour : PlayableBehaviour
{
    public AnimationMixerPlayable mixerPlayable;    public override void PrepareFrame(Playable playable, FrameData info)
    {
        float blend = Mathf.PingPong((float)playable.GetTime(), 1.0f);        mixerPlayable.SetInputWeight(0, blend);
        mixerPlayable.SetInputWeight(1, 1.0f - blend);        base.PrepareFrame(playable, info);
    }
}public class PlayableBehaviourSample : MonoBehaviour
{
    PlayableGraph m_Graph;
    public AnimationClip clipA;
    public AnimationClip clipB;    // Use this for initialization
    void Start()
    {
        // Create the PlayableGraph.
        m_Graph = PlayableGraph.Create();        // Add an AnimationPlayableOutput to the graph.
        var animOutput = AnimationPlayableOutput.Create(m_Graph, "AnimationOutput", GetComponent<Animator>());        // Add an AnimationMixerPlayable to the graph.
        var mixerPlayable = AnimationMixerPlayable.Create(m_Graph, 2);        // Add two AnimationClipPlayable to the graph.
        var clipPlayableA = AnimationClipPlayable.Create(m_Graph, clipA);
        var clipPlayableB = AnimationClipPlayable.Create(m_Graph, clipB);        // Add a custom PlayableBehaviour to the graph.
        // This behavior will change the weights of the mixer dynamically.
        var blenderPlayable = ScriptPlayable<BlenderPlayableBehaviour>.Create(m_Graph, 1);
        blenderPlayable.GetBehaviour().mixerPlayable = mixerPlayable;        // Create the topology, connect the AnimationClipPlayable to the
        // AnimationMixerPlayable.  Also add the BlenderPlayableBehaviour.
        m_Graph.Connect(clipPlayableA, 0, mixerPlayable, 0);
        m_Graph.Connect(clipPlayableB, 0, mixerPlayable, 1);
        m_Graph.Connect(mixerPlayable, 0, blenderPlayable, 0);        // Use the ScriptPlayable as the source for the AnimationPlayableOutput.
        // Since it's a ScriptPlayable, also set the source input port to make the
        // passthrough to the AnimationMixerPlayable.
        animOutput.SetSourcePlayable(blenderPlayable);
        animOutput.SetSourceInputPort(0);        // Play the graph.
        m_Graph.Play();
    }    private void OnDestroy()
    {
        // Destroy the graph once done with it.
        m_Graph.Destroy();
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| OnBehaviourPause | This method is invoked when one of the following situations occurs: The effective play state during traversal is changed to PlayState.Paused. This state is indicated by FrameData.effectivePlayState. The PlayableGraph is stopped while the playable play state is Playing. This state is indicated by PlayableGraph.IsPlaying returning true. |
| OnBehaviourPlay | This function is called when the Playable play state is changed to PlayState.Playing. |
| OnGraphStart | This function is called when the PlayableGraph that owns this PlayableBehaviour starts. |
| OnGraphStop | This function is called when the PlayableGraph that owns this PlayableBehaviour stops. |
| OnPlayableCreate | This function is called when the Playable that owns the PlayableBehaviour is created. |
| OnPlayableDestroy | This function is called when the Playable that owns the PlayableBehaviour is destroyed. |
| PrepareData | This function is called during the PrepareData phase of the PlayableGraph. |
| PrepareFrame | This function is called during the PrepareFrame phase of the PlayableGraph. |
| ProcessFrame | This function is called during the ProcessFrame phase of the PlayableGraph. |
