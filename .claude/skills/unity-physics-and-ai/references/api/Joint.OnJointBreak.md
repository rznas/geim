<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint.OnJointBreak.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when a joint attached to the same game object broke.

When a force that is higher than the breakForce of the joint, the joint will break off. When the joint breaks off, OnJointBreak will be called and the break force applied to the joint will be passed in. After OnJointBreak the joint will automatically be removed from the game object and deleted.

Note: OnJointBreak is called by Unity, it is not a function you can call from a joint.

Additional resources: Joint.breakForce.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnJointBreak(float breakForce)
    {
        Debug.Log("A joint has just been broken!, force: " + breakForce);
    }
}
```
