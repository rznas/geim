<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform-up.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The green axis of the transform in world space.

Manipulate a GameObject’s position on the Y axis (green axis) of the transform in world space. Unlike Vector3.up, Transform.up moves the GameObject while also considering its rotation.

When a GameObject is rotated, the green arrow representing the Y axis of the GameObject also changes direction. Transform.up moves the GameObject in the green arrow’s axis (Y).

For moving the GameObject on the Y axis while ignoring rotation, see Vector3.up.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Rigidbody2D m_Rigidbody;
    float m_Speed;    void Start()
    {
        //Fetch the Rigidbody component you attach from your GameObject
        m_Rigidbody = GetComponent<Rigidbody2D>();
        //Set the speed of the GameObject
        m_Speed = 10.0f;
    }    void Update()
    {
        if (Input.GetKey(KeyCode.UpArrow))
        {
            //Move the Rigidbody upwards constantly at speed you define (the green arrow axis in Scene view)
            m_Rigidbody.linearVelocity = transform.up * m_Speed;
        }        if (Input.GetKey(KeyCode.DownArrow))
        {
            //Move the Rigidbody downwards constantly at the speed you define (the green arrow axis in Scene view)
            m_Rigidbody.linearVelocity = -transform.up * m_Speed;
        }        if (Input.GetKey(KeyCode.LeftArrow))
        {
            //rotate the sprite about the Z axis in the positive direction
            transform.Rotate(new Vector3(0, 0, 1) * Time.deltaTime * m_Speed, Space.World);
        }        if (Input.GetKey(KeyCode.RightArrow))
        {
            //rotate the sprite about the Z axis in the negative direction
            transform.Rotate(new Vector3(0, 0, -1) * Time.deltaTime * m_Speed, Space.World);
        }
    }
}
```
