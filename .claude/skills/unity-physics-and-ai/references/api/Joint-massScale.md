<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint-massScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The scale to apply to the inverse mass and inertia tensor of the body prior to solving the constraints.

Scale mass and the inertia tensor to make the joints solver converge faster, thus resulting in less stretch of the limbs of a typical ragdoll. Most useful in conjunction with Joint.connectedMassScale.

For example, if you have two objects in a ragdoll of masses 1 and 10, the physics engine will typically resolve the joint by changing the velocity of the lighter body much more than the heavier one. Applying a mass scale of 10 to the first body makes solver change the velocity of both bodies by an equal amount. Applying mass scales such that the joint sees similar effective masses and inertias makes the solver converge faster, which can make individual joints seem less rubbery or separated, and sets of jointed bodies appear less twitchy

Note that scaling mass and inertia is fundamentally nonphysical and momentum won't be conserved.

The following script is useful to adjust the mass and inertia scaling in order to get the same corrective velocity out of the solver. Attach it to the ragdoll's root, or to a limb that is over-stretched during the gameplay and it will find all joints down in the transform hierarchy below itself and adjust the mass scale.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;public class NormalizeMass : MonoBehaviour
{
    private void Apply(Transform root)
    {
        var j = root.GetComponent<Joint>();        // Apply the inertia scaling if possible
        if (j && j.connectedBody)
        {
            // Make sure that both of the connected bodies will be moved by the solver with equal speed
            j.massScale = j.connectedBody.mass / root.GetComponent<Rigidbody>().mass;
            j.connectedMassScale = 1f;
        }        // Continue for all children...
        for (int childId = 0; childId < root.childCount; ++childId)
        {
            Apply(root.GetChild(childId));
        }
    }    public void Start()
    {
        Apply(this.transform);
    }
}
```
