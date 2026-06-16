<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-linearVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The linear velocity of the Rigidbody2D represents the rate of change over time of the Rigidbody2D position in world-units.

The linear velocity is specified as a Vector2 with components in the X and Y directions (there is no Z direction in 2D physics). The value is not usually set directly but rather by using *forces*.

Linear velocity is affected by user specified forces, impulses from collisions, gravity and Rigidbody2D.linearDamping.

**Note:** A velocity in Unity is represented as world units per second. World units are arbitrary and often thought of as metres, but they can also represent millimetres or light years.

Additional resources: Rigidbody2D.angularVelocity, Rigidbody2D.AddForce and Rigidbody2D.linearDamping.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    private Rigidbody2D rb;    private float time = 0.0f;
    private bool isMoving = false;
    private bool isJumpPressed = false;
 
    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }    void Update()
    {
        isJumpPressed = Input.GetButtonDown("Jump");
    }    void FixedUpdate()
    {
        // Was jump pressed and we're not moving?
        if (isJumpPressed && !isMoving)
        {
            // The rigidbody moves up the y axis at a rate of 10 units per second
            rb.linearVelocity = new Vector2(0f, 10f);            isMoving = true;            Debug.Log("Moving!");
        }        if (isMoving)
        {
            // When the rigidbody has moved for 10 seconds, report its position
            time = time + Time.fixedDeltaTime;
            if (time > 10f)
            {
               // Remove the linear velocity.
                rb.linearVelocity = Vector2.zero;                time = 0.0f;
                isMoving = false;
 
                Debug.Log(rb.position.y + " : " + time);
            }
        }
    }
}
```
