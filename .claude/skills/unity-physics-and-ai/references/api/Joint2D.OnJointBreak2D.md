<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint2D.OnJointBreak2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when a Joint2D attached to the same game object breaks.

When the Joint2D.reactionForce is higher than the Joint2D.breakForce or the Joint2D.reactionTorque is higher than the Joint2D.breakTorque of the joint, the joint will break. When the joint breaks, Joint2D.OnJointBreak2D will be called and the specific Joint2D that broke will be passed in.

After Joint2D.OnJointBreak2D is called, the joint action depends on the option selected in Joint2D.breakAction.

Additional resources: Joint2D.breakForce, Joint2D.breakTorque, Joint2D.reactionForce and Joint2D.reactionTorque.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnJointBreak2D(Joint2D brokenJoint)
    {
        Debug.Log("A joint has just been broken!");
        Debug.Log("The broken joint exerted a reaction force of " + brokenJoint.reactionForce);
        Debug.Log("The broken joint exerted a reaction torque of " + brokenJoint.reactionTorque);
    }
}
```
