<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.MovePosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Provides the new position for the Rigidbody object. |

### Description

Moves the kinematic Rigidbody towards `position`.

Rigidbody.MovePosition moves a Rigidbody and complies with the interpolation settings. When Rigidbody interpolation is enabled, Rigidbody.MovePosition creates a smooth transition between frames. Unity moves a Rigidbody in each `FixedUpdate` call. The `position` occurs in world space. To teleport a Rigidbody from one position to another, use Rigidbody.position instead of MovePosition.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;public class Example : MonoBehaviour
{
    private Rigidbody rb;
    private float moveSpeed = 5f;    [Header("Input Actions")]
    public InputActionReference moveAction;    private void OnEnable()
    {
        moveAction.action.Enable();
    }    private void OnDisable()
    {
        moveAction.action.Disable();
    }
    
    void Awake()
    {
        //Fetch the Rigidbody from the GameObject with this script attached
        rb = GetComponent<Rigidbody>();
    }    void FixedUpdate()
    {
        //Store user input as a movement vector
        Vector3 m_Input = new Vector3(moveAction.action.ReadValue<Vector2>().x, 0, moveAction.action.ReadValue<Vector2>().y);        //Apply the movement vector to the current position, which is
        //multiplied by deltaTime and speed for a smooth MovePosition
        rb.MovePosition(transform.position + m_Input * Time.fixedDeltaTime * moveSpeed);
    }
}
```
