<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | The x component of the vector. |
| y | The y component of the vector. |
| z | The z component of the vector. |

### Description

Creates a new three-dimensional vector or point.

The x, y, z parameters are used to initialize the corresponding x,y,z vector components.

```csharp
// Attach this script to a GameObject.
// Attach a Rigidbody component to the GameObject (Click Add Component button in the Inspector window and go to Physics<Rigidbody)
// This script moves a GameObject upwards using a Vector3
using UnityEngine;public class Vector3CtorExample : MonoBehaviour
{
    Vector3 m_YDirectionVector;
    Rigidbody m_Rigidbody;
    float m_Speed = 2.0f;    void Start()
    {
        // Initialize the Y direction vector
        m_YDirectionVector = new Vector3(0.0f, 1.0f, 0.0f);
        // Fetch the RigidBody you attach to the GameObject
        m_Rigidbody = GetComponent<Rigidbody>();
    }    void Update()
    {
        // Move the RigidBody m_Speed units per second  in the Y direction
        m_Rigidbody.linearVelocity = m_YDirectionVector * m_Speed;
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| x | The x component of the vector. |
| y | The y component of the vector. |

### Description

Creates a new three dimensional vector or point in the xy-plane.

The x, y parameters are used to set the x,y vector components and the `z` component is set to zero.
