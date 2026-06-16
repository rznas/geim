<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RigidbodyConstraints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use these flags to constrain motion of Rigidbodies.

Additional resources: Rigidbody.constraints. This enables you to freeze positions and rotations on all axes.

```csharp
//This example shows how RigidbodyConstraints is used to freeze the position and rotation of a Rigidbody in the z axis at start-up.
//It also shows what happens when these constraints are removed, when you press the space key
//Attach this to a GameObject with a Rigidbody to see it in actionusing UnityEngine;
using UnityEngine.InputSystem;public class RigidBodyConstraitsExample : MonoBehaviour
{
    Rigidbody m_Rigidbody;
    Vector3 m_ZAxis;    void Start()
    {
        m_Rigidbody = GetComponent<Rigidbody>();
        //This locks the RigidBody so that it does not move or rotate in the z axis (can be seen in Inspector).
        m_Rigidbody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotationZ;
        //Set up vector for moving the Rigidbody in the z axis
        m_ZAxis = new Vector3(0, 0, 5);
    }    void Update()
    {
        //Press space to remove the constraints on the RigidBody
        if (Keyboard.current.spaceKey.wasPressedThisFrame)
        {
            //Remove all constraints
            m_Rigidbody.constraints = RigidbodyConstraints.None;
        }        //Press the right arrow key to move positively in the z axis if the constraints are removed
        if (Keyboard.current.rightArrowKey.wasPressedThisFrame)
        {
            //If the constraints are removed, the Rigidbody moves along the z axis
            //If the constraints are there, no movement occurs
            m_Rigidbody.velocity = m_ZAxis;
        }        //Press the left arrow key to move negatively in the z axis if the constraints are removed
        if (Keyboard.current.leftArrowKey.wasPressedThisFrame)
        {
            m_Rigidbody.velocity = -m_ZAxis;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | No constraints. |
| FreezePositionX | Freeze motion along the X-axis. Limits motion to the YZ plane only. |
| FreezePositionY | Freeze motion along the Y-axis. Limits motion to the XZ plane only. |
| FreezePositionZ | Freeze motion along the Z-axis. Limits motion to the XY plane only. |
| FreezeRotationX | Freeze rotation along the X-axis. |
| FreezeRotationY | Freeze rotation along the Y-axis. |
| FreezeRotationZ | Freeze rotation along the Z-axis. |
| FreezePosition | Freeze motion along all axes. Equivalent of RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezePositionY | RigidbodyConstraints.FreezePositionZ. |
| FreezeRotation | Freeze rotation along all axes. Equivalent of RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationY | RigidbodyConstraints.FreezeRotationZ. |
| FreezeAll | Freeze rotation and motion along all axes. Equivalent of RigidbodyConstraints.FreezePosition | RigidbodyConstraints.FreezeRotation. |
