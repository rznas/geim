<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableOutputExtensions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Extensions for all the types that implements IPlayableOutput.

Extension methods are static methods that can be called as if they were instance methods on the extended type.

```csharp
using UnityEngine;
using UnityEngine.Playables;public class ExamplePlayableBehaviour : PlayableBehaviour
{
    void Start()
    {
        PlayableGraph graph = PlayableGraph.Create();
        ScriptPlayableOutput scriptOutput = ScriptPlayableOutput.Create(graph, "MyOutput");        // Calling method PlayableExtensions.SetWeight on ScriptPlayableOutput as if it was an instance method.
        scriptOutput.SetWeight(10);        // The line above is the same as calling directly PlayableExtensions.SetDuration, but it is more compact and readable.
        PlayableOutputExtensions.SetWeight(scriptOutput, 10);
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| AddNotificationReceiver | Registers a new receiver that listens for notifications. |
| GetNotificationReceivers | Retrieves the list of notification receivers currently registered on the output. |
| GetSourceOutputPort | Returns the source playable's output connection index. |
| GetSourcePlayable | Returns the source playable. |
| GetUserData | Returns the opaque user data. This is the same value as the last last argument of ProcessFrame. |
| GetWeight | Returns the weight of the connection from the PlayableOutput to the source playable. |
| IsOutputNull | Returns true if the PlayableOutput is null, false otherwise. |
| IsOutputValid |  |
| PushNotification | Queues a notification to be sent through the Playable system. |
| RemoveNotificationReceiver | Unregisters a receiver on the output. |
| SetReferenceObject | Sets the bound object to a new value. Used to associate an output to an object (Track asset in case of Timeline). |
| SetSourcePlayable | Sets which playable that computes the output and which sub-tree index. |
| SetUserData | Sets the opaque user data. This same data is passed as the last argument to ProcessFrame. |
| SetWeight | Sets the weight of the connection from the PlayableOutput to the source playable. |
