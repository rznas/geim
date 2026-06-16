<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform-right.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The red axis of the transform in world space.

Manipulate a GameObject’s position on the X axis (red axis) of the transform in world space. Unlike Vector3.right, Transform.right moves the GameObject while also considering its rotation.

When a GameObject is rotated, the red arrow representing the X axis of the GameObject also changes direction. Transform.right moves the GameObject in the red arrow’s axis (X).

For moving the GameObject on the X axis while ignoring rotation, see Vector3.right.

```csharp
//Attach this script to a GameObject with a Rigidbody2D component. Use the left and right arrow keys to see the transform in action.
//Use the up and down keys to change the rotation, and see how using Transform.right differs from using Vector3.rightusing UnityEngine;public class Example : MonoBehaviour
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
        if (Input.GetKey(KeyCode.RightArrow))
        {
            //Move the Rigidbody to the right constantly at speed you define (the red arrow axis in Scene view)
            m_Rigidbody.linearVelocity = transform.right * m_Speed;
        }        if (Input.GetKey(KeyCode.LeftArrow))
        {
            //Move the Rigidbody to the left constantly at the speed you define (the red arrow axis in Scene view)
            m_Rigidbody.linearVelocity = -transform.right * m_Speed;
        }        if (Input.GetKey(KeyCode.UpArrow))
        {
            //rotate the sprite about the Z axis in the positive direction
            transform.Rotate(new Vector3(0, 0, 1) * Time.deltaTime * m_Speed, Space.World);
        }        if (Input.GetKey(KeyCode.DownArrow))
        {
            //rotate the sprite about the Z axis in the negative direction
            transform.Rotate(new Vector3(0, 0, -1) * Time.deltaTime * m_Speed, Space.World);
        }
    }
}
```
