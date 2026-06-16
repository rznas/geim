<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-linearVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The linear velocity vector of the rigidbody. It represents the rate of change of Rigidbody position.

In most cases you should not modify the velocity directly, as this can result in unrealistic behaviour - use AddForce instead Do not set the linear velocity of an object every physics step, this will lead to unrealistic physics simulation. A typical usage is where you would change the velocity is when jumping in a first person shooter, because you want an immediate change in velocity.

**Note:** The linearVelocity is a world-space property.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;// The velocity along the y axis is 10 units per second.  If the GameObject starts at (0,0,0) then
// it will reach (0,100,0) units after 10 seconds.public class ExampleClass : MonoBehaviour
{
    public Rigidbody rb;    private float time = 0.0f;
    private bool isMoving = false;
    private bool isJumpPressed = false;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    void Update()
    {
        isJumpPressed = Keyboard.current.spaceKey.wasPressedThisFrame;
    }    void FixedUpdate()
    {
        if (isJumpPressed)
        {
            // the cube moves up the y axis at a rate of 10 units per second
            rb.linearVelocity = new Vector3(0, 10, 0);
            isMoving = true;
            Debug.Log("jump");
        }        if (isMoving)
        {
            // when the cube has moved for 10 seconds, report its position
            time = time + Time.fixedDeltaTime;
            if (time > 10.0f)
            {
                Debug.Log(gameObject.transform.position.y + " : " + time);
                time = 0.0f;
            }
        }
    }
}
```

**Note:** A velocity in Unity is units per second. The units are often thought of as metres but could be millimetres or light years. Unity velocity also has the speed in X, Y, and Z defining the direction. Additionally, setting the linear velocity of a kinematic rigidbody is not allowed and will have no effect.
