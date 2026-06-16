<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.AnimationPlayableUtilities.Play.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animator | Target Animator. |
| playable | The Playable that will be played. |
| graph | The Graph that owns the Playable. |

### Description

Plays the Playable on the given Animator.

 **Note:** This method is deprecated as it overrides the Time Update Mode of the Playable Graph. For an equivalent function, refer to the example below.

```csharp
using UnityEngine;
using UnityEngine.Animations;
using UnityEngine.Playables;public class Example
{
    void Play(Animator animator, Playable playable, PlayableGraph graph)
    {
        AnimationPlayableOutput playableOutput = AnimationPlayableOutput.Create(graph, "AnimationClip", animator);
        playableOutput.SetSourcePlayable(playable, 0);
        graph.SetTimeUpdateMode(DirectorUpdateMode.GameTime);
        graph.Play();
    }
}
```
