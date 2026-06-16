<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableDirector-paused.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event that is raised when a PlayableDirector component has paused.

Add an event handler, to this event, to receive a notification when a PlayableDirector is paused. The handler also receives the PlayableDirector that is paused.

When using PlayableBehaviour, this event is raised before PlayableBehaviour.OnBehaviourPause.

```csharp
using UnityEngine;
using UnityEngine.Playables;public class PlayableDirectorCallbackExample : MonoBehaviour
{
    public PlayableDirector director;
    void OnEnable()
    {
        director.paused += OnPlayableDirectorPaused;
    }    void OnPlayableDirectorPaused(PlayableDirector aDirector)
    {
        if (director == aDirector)
            Debug.Log("PlayableDirector named " + aDirector.name + " is now paused.");
    }    void OnDisable()
    {
        director.paused -= OnPlayableDirectorPaused;
    }
}
```

Additional resources: PlayableDirector.played, PlayableDirector.stopped.
