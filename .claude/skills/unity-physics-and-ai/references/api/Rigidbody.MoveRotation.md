<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.MoveRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rotation | The new rotation for the Rigidbody. |

### Description

Rotates the rigidbody to `rotation`.

Use Rigidbody.MoveRotation to rotate a Rigidbody, complying with the Rigidbody's interpolation setting.

If Rigidbody interpolation is enabled on the Rigidbody, calling Rigidbody.MoveRotation will resulting in a smooth transition between the two rotations in any intermediate frames rendered. This should be used if you want to continuously rotate a rigidbody in each FixedUpdate.

Set Rigidbody.rotation instead, if you want to teleport a rigidbody from one rotation to another, with no intermediate positions being rendered.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Rigidbody m_Rigidbody;
    Vector3 m_EulerAngleVelocity;    void Start()
    {
        //Fetch the Rigidbody from the GameObject with this script attached
        m_Rigidbody = GetComponent<Rigidbody>();        //Set the angular velocity of the Rigidbody (rotating around the Y axis, 100 deg/sec)
        m_EulerAngleVelocity = new Vector3(0, 100, 0);
    }    void FixedUpdate()
    {
        Quaternion deltaRotation = Quaternion.Euler(m_EulerAngleVelocity * Time.fixedDeltaTime);
        m_Rigidbody.MoveRotation(m_Rigidbody.rotation * deltaRotation);
    }
}
```
