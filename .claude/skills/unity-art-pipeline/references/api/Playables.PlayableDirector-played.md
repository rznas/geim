<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableDirector-played.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event that is raised when a PlayableDirector component has begun playing.

Add an event handler, to this event, to receive a notification when a PlayableDirector begins playing. The handler also receives the PlayableDirector that is playing.

When using PlayableBehaviour, this event is raised after PlayableBehaviour.OnPlayableCreate and before PlayableBehaviour.OnGraphStart and PlayableBehaviour.OnBehaviourPlay.

This event will not be raised if the PlayableDirector is automatically played with PlayableDirector.playOnAwake.

```csharp
using UnityEngine;
using UnityEngine.Playables;public class PlayableDirectorCallbackExample : MonoBehaviour
{
    public PlayableDirector director;    void OnEnable()
    {
        director.played += OnPlayableDirectorPlayed;
    }    void OnPlayableDirectorPlayed(PlayableDirector aDirector)
    {
        if (director == aDirector)
            Debug.Log("PlayableDirector named " + aDirector.name + " is now playing.");
    }    void OnDisable()
    {
        director.played -= OnPlayableDirectorPlayed;
    }
}
```

Additional resources: PlayableDirector.paused, PlayableDirector.stopped.
