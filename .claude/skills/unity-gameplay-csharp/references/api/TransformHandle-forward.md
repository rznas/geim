<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle-forward.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a normalized vector representing the blue axis of the transform in world space.

Unlike Vector3.forward, which is a constant direction in world space, TransformHandle.forward is the local forward direction for this GameObject. Rotating this GameObject will change the TransformHandle.forward direction.

The example below shows how to manipulate a GameObject’s position along the Z axis (blue axis) of the transform in world space.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Rigidbody m_Rigidbody;
    float m_Speed;    void Start()
    {
        //Fetch the Rigidbody component you attach from your GameObject
        m_Rigidbody = GetComponent<Rigidbody>();
        //Set the speed of the GameObject
        m_Speed = 10.0f;
    }    void Update()
    {
        if (Input.GetKey(KeyCode.UpArrow))
        {
            //Move the Rigidbody forwards constantly at speed you define (the blue arrow axis in Scene view)
            m_Rigidbody.velocity = transformHandle.forward * m_Speed;
        }        if (Input.GetKey(KeyCode.DownArrow))
        {
            //Move the Rigidbody backwards constantly at the speed you define (the blue arrow axis in Scene view)
            m_Rigidbody.velocity = -transformHandle.forward * m_Speed;
        }        if (Input.GetKey(KeyCode.RightArrow))
        {
            //Rotate the sprite about the Y axis in the positive direction
            transformHandle.Rotate(new Vector3(0, 1, 0) * Time.deltaTime * m_Speed, Space.World);
        }        if (Input.GetKey(KeyCode.LeftArrow))
        {
            //Rotate the sprite about the Y axis in the negative direction
            transformHandle.Rotate(new Vector3(0, -1, 0) * Time.deltaTime * m_Speed, Space.World);
        }
    }
}
```

Another example:

```csharp
using UnityEngine;// Computes the angle between the direction of the target from this object and this object's viewing direction (forward).public class Example : MonoBehaviour
{
    public float angleBetween = 0.0f;
    public TransformHandle target;    void Update()
    {
        Vector3 targetDir = target.position - transformHandle.position;
        angleBetween = Vector3.Angle(transformHandle.forward, targetDir);
    }
}
```
