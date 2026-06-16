<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController.SimpleMove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Moves the character with `speed`.

Velocity along the y-axis is ignored. Speed is in units/s. Gravity is automatically applied. Returns true if the character is grounded. It is recommended that you make only one call to Move or SimpleMove per frame.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;[RequireComponent(typeof(CharacterController))]
public class CharacterMover : MonoBehaviour
{
    private float moveSpeed = 3.0f;
    private float rotationSpeed = 90.0f; // degrees per second    public CharacterController characterController;    [Header("Input Actions")]
    public InputActionReference moveAction;    private void OnEnable()
    {
        moveAction.action.Enable();
    }    private void OnDisable()
    {
        moveAction.action.Disable();
    }    void Update()
    {
        // Rotate character
        transform.Rotate(Vector3.up, moveAction.action.ReadValue<Vector2>().x * rotationSpeed * Time.deltaTime);        // Move character
        Vector3 moveDirection = transform.forward * moveAction.action.ReadValue<Vector2>().y * moveSpeed;
        
        characterController.SimpleMove(moveDirection);
    }
}
```
