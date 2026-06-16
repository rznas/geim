<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Extensions for all the types that implements IPlayable.

Extension methods are static methods that can be called as if they were instance methods on the extended type.

```csharp
using UnityEngine;
using UnityEngine.Animations;
using UnityEngine.Playables;public class ExamplePlayableBehaviour : PlayableBehaviour
{
    void Start()
    {
        PlayableGraph graph = PlayableGraph.Create();
        AnimationMixerPlayable mixer = AnimationMixerPlayable.Create(graph, 1);        // Calling method PlayableExtensions.SetDuration on AnimationMixerPlayable as if it was an instance method.
        mixer.SetDuration(10);        // The line above is the same as calling directly PlayableExtensions.SetDuration, but it is more compact and readable.
        PlayableExtensions.SetDuration(mixer, 10);
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| AddInput | Create a new input port and connect it to the output port of the given Playable. |
| ConnectInput | Connect the output port of a Playable to one of the input ports. |
| Destroy | Destroys the current Playable. |
| DisconnectInput | Disconnect the input port of a Playable. |
| GetDuration | Returns the duration of the Playable. |
| GetGraph | Returns the PlayableGraph that owns this Playable. A Playable can only be used in the graph that was used to create it. |
| GetInput | Returns the Playable connected at the given input port index. |
| GetInputCount | Returns the number of inputs supported by the Playable. |
| GetInputWeight | Returns the weight of the Playable connected at the given input port index. |
| GetLeadTime | Returns the Playable lead time in seconds. |
| GetOutput | Returns the Playable connected at the given output port index. |
| GetOutputCount | Returns the number of outputs supported by the Playable. |
| GetPlayState | Returns the current PlayState of the Playable. |
| GetPreviousTime | Returns the previous local time of the Playable. |
| GetPropagateSetTime | Returns the time propagation behavior of this Playable. |
| GetSpeed | Returns the speed multiplier that is applied to the the current Playable. |
| GetTime | Returns the current local time of the Playable. |
| GetTraversalMode | Returns the propagation mode for the multi-output playable. |
| IsDone | Returns a flag indicating that a playable has completed its operation. |
| IsNull | Returns true if the Playable is null, false otherwise. |
| IsValid | Returns the vality of the current Playable. |
| Pause | Tells to pause the Playable. |
| Play | Starts to play the Playable. |
| SetDone | Changes a flag indicating that a playable has completed its operation. |
| SetDuration | Changes the duration of the Playable. |
| SetInputCount | Changes the number of inputs supported by the Playable. |
| SetInputWeight | Changes the weight of the Playable connected to the current Playable. |
| SetLeadTime | Sets the Playable lead time in seconds. |
| SetOutputCount | Changes the number of outputs supported by the Playable. |
| SetPropagateSetTime | Changes the time propagation behavior of this Playable. |
| SetSpeed | Changes the speed multiplier that is applied to the the current Playable. |
| SetTime | Changes the current local time of the Playable. |
| SetTraversalMode | Sets the propagation mode of PrepareFrame and ProcessFrame for the multi-output playable. |
