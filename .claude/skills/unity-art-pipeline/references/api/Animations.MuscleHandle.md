<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.MuscleHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handle for a muscle in the AnimationHumanStream.

MuscleHandle can only be used on AnimationHumanStream, otherwise an `InvalidOperationException` is thrown.

```csharp
using UnityEngine;
using UnityEngine.Animations;
using UnityEngine.Playables;public struct MuscleHandleExampleJob : IAnimationJob
{
    public MuscleHandle muscleHandle;    public void ProcessRootMotion(AnimationStream stream) {}
    public void ProcessAnimation(AnimationStream stream)
    {
        AnimationHumanStream humanStream = stream.AsHuman();        // Get a muscle value.
        float muscleValue = humanStream.GetMuscle(muscleHandle);        // Set a muscle value.
        humanStream.SetMuscle(muscleHandle, muscleValue);
    }
}[RequireComponent(typeof(Animator))]
public class MuscleHandleExample : MonoBehaviour
{
    void Start()
    {
        var graph = PlayableGraph.Create();
        var output = AnimationPlayableOutput.Create(graph, "output", GetComponent<Animator>());        var job = new MuscleHandleExampleJob();
        job.muscleHandle = new MuscleHandle(HumanPartDof.LeftArm, ArmDof.HandDownUp);        var scriptPlayable = AnimationScriptPlayable.Create(graph, job);
        output.SetSourcePlayable(scriptPlayable);        graph.Evaluate(1.0f);        graph.Destroy();
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| muscleHandleCount | The total number of DoF parts in a humanoid. (Read Only) |

### Properties

| Property | Description |
| --- | --- |
| dof | The muscle human sub-part. (Read Only) |
| humanPartDof | The muscle human part. (Read Only) |
| name | The name of the muscle. (Read Only) |

### Constructors

| Constructor | Description |
| --- | --- |
| MuscleHandle | The different constructors that creates the muscle handle. |

### Static Methods

| Method | Description |
| --- | --- |
| GetMuscleHandles | Fills the array with all the possible muscle handles on a humanoid. |
