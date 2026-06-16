<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-constraints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls which degrees of freedom are allowed for the simulation of this Rigidbody.

By default this is set to RigidbodyConstraints.None, allowing rotation and movement along all axes. In some cases, you may want to constrain a Rigidbody to only move or rotate along some axes, for example when developing 2D games. You can use the bitwise OR operator to combine multiple constraints.

Note that position constraints are applied in World space, and rotation constraints are applied in the inertia space (relative to Rigidbody.inertiaTensorRotation).

```csharp
//Attach this script to a GameObject.
//Attach a Rigidbody to the GameObject by clicking the GameObject in the Hierarchy and
//clicking the Add Component button. Search for Rigidbody in the field and select
//it when shown.using UnityEngine;public class Example : MonoBehaviour
{
    Rigidbody m_Rigidbody;    void Start()
    {
        m_Rigidbody = GetComponent<Rigidbody>();
        //This locks the RigidBody so that it does not move or rotate in the Z axis.
        m_Rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationZ;
    }
}
```
