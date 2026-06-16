<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanPose-ikGoalRotations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rotations of the four IK goals: left foot, right foot, left hand and right hand in character space.

Use in conjunction with HumanPose.bodyRotation to calculate the global rotation of Avatar IK effectors. See code example for details.

```csharp
using System;
using UnityEngine;

[RequireComponent(typeof(Animator))]
[ExecuteInEditMode]
public class HumanPoseHandlerEffectorDisplay : MonoBehaviour
{
    private Animator m_Animator;
    private HumanPoseHandler m_HumanPoseHandler;
    private HumanPose m_HumanPose;

    void OnEnable()
    {
        m_Animator = GetComponent<Animator>();
        m_HumanPoseHandler = new HumanPoseHandler(m_Animator.avatar, m_Animator.avatarRoot);
        m_HumanPose = new HumanPose();
    }

    private void OnDrawGizmos()
    {
        //Acquire the human pose from the current position of the transforms
        m_HumanPoseHandler.GetHumanPose(ref m_HumanPose);

        //backup the gizmos static color.
        var color = Gizmos.color;
        Gizmos.color = Color.yellow;
        for (int i = 0; i < 4; i++)
        {
            //Acquire the local position and rotation of the effectors
            var localPosition = m_HumanPose.ikGoalPositions[i];
            var localRotation = m_HumanPose.ikGoalRotations[i];

            //Calculate the global position of the effector by rotating by the body rotation, then adding the body position
            var globalPosition = m_HumanPose.bodyRotation * localPosition + m_HumanPose.bodyPosition;

            //Multiply the position by the human scale to convert the normalized position into the global position
            globalPosition *= m_Animator.humanScale;

            //Calculate the global rotation
            var globalRotation = m_HumanPose.bodyRotation * localRotation;

            //Backup the static gizmos matrix
            var backup = Gizmos.matrix;

            //Set the matrix to rotate the sphere to align with the effector
            Gizmos.matrix = Matrix4x4.identity * Matrix4x4.Translate(globalPosition) * Matrix4x4.Rotate(globalRotation) * Matrix4x4.Translate(-globalPosition);

            Gizmos.color = Color.red;
            Gizmos.DrawLine(globalPosition, globalPosition + Vector3.right * 0.2f);
            Gizmos.color = Color.green;
            Gizmos.DrawLine(globalPosition, globalPosition + Vector3.up * 0.2f);
            Gizmos.color = Color.blue;
            Gizmos.DrawLine(globalPosition, globalPosition + Vector3.forward * 0.2f);

            //Draw the sphere
            Gizmos.DrawWireSphere(globalPosition, 0.05f);

            //Restore the static gizmos matrix
            Gizmos.matrix = backup;
        }

        //Restore the gizmos static color
        Gizmos.color = color;
    }
}
```
