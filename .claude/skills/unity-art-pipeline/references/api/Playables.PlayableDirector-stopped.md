<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableDirector-stopped.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event that is raised when a PlayableDirector component has stopped.

Add an event handler, to this event, to receive a notification when a PlayableDirector is stopped. The event handler also receives the PlayableDirector that is stopped.

When using PlayableBehaviour, this event is raised before PlayableBehaviour.OnBehaviourPause and PlayableBehaviour.OnGraphStop.

```csharp
using UnityEngine;
using UnityEngine.Playables;public class PlayableDirectorCallbackExample : MonoBehaviour
{
    public PlayableDirector director;    void OnEnable()
    {
        director.stopped += OnPlayableDirectorStopped;
    }    void OnPlayableDirectorStopped(PlayableDirector aDirector)
    {
        if (director == aDirector)
            Debug.Log("PlayableDirector named " + aDirector.name + " is now stopped.");
    }    void OnDisable()
    {
        director.stopped -= OnPlayableDirectorStopped;
    }
}
```

Additional resources: PlayableDirector.played, PlayableDirector.paused.
