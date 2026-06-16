<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationHumanStream.SolveIK.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Execute the IK solver.

The humanoid IK solver is executed using the IK goal position, rotation, and weight currently set in the AnimationHumanStream.

```csharp
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Animations;public struct IKJob : IAnimationJob
{
    public TransformSceneHandle effector;
    public PropertySceneHandle positionWeight;
    public PropertySceneHandle rotationWeight;    public void ProcessRootMotion(AnimationStream stream) {}    public void ProcessAnimation(AnimationStream stream)
    {
        AnimationHumanStream humanStream = stream.AsHuman();
        if (effector.IsValid(stream) && positionWeight.IsValid(stream) && rotationWeight.IsValid(stream))
        {
            humanStream.SetGoalPosition(AvatarIKGoal.LeftFoot, effector.GetPosition(stream));
            humanStream.SetGoalRotation(AvatarIKGoal.LeftFoot, effector.GetRotation(stream));
            humanStream.SetGoalWeightPosition(AvatarIKGoal.LeftFoot, positionWeight.GetFloat(stream));
            humanStream.SetGoalWeightRotation(AvatarIKGoal.LeftFoot, rotationWeight.GetFloat(stream));
        }        humanStream.SolveIK();
    }
}
```
