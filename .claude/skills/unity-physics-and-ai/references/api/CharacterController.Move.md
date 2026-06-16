<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController.Move.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Supplies the movement of a GameObject with an attached CharacterController component.

The CharacterController.Move motion moves the GameObject in the given direction. The given direction requires absolute movement delta values. A collision constrains the Move from taking place. The return, CollisionFlags, indicates the direction of a collision: None, Sides, Above, and Below. CharacterController.Move does not use gravity.

The example below demonstrates how to use CharacterController.Move. `Update` causes a Move to re-position the player. In addition, `Jump` changes the player position in a vertical direction.

```csharp
// This first example shows how to move using Input System Package (New)using UnityEngine;
using UnityEngine.InputSystem;public class Example : MonoBehaviour
{
    private float playerSpeed = 5.0f;
    private float jumpHeight = 1.5f;
    private float gravityValue = -9.81f;    public CharacterController controller;
    private Vector3 playerVelocity;
    private bool groundedPlayer;    [Header("Input Actions")]
    public InputActionReference moveAction;
    public InputActionReference jumpAction;    private void OnEnable()
    {
        moveAction.action.Enable();
        jumpAction.action.Enable();
    }    private void OnDisable()
    {
        moveAction.action.Disable();
        jumpAction.action.Disable();
    }    void Update()
    {
        groundedPlayer = controller.isGrounded;        if (groundedPlayer)
        {
            // Slight downward velocity to keep grounded stable
            if (playerVelocity.y < -2f)
                playerVelocity.y = -2f;
        }        // Read input
        Vector2 input = moveAction.action.ReadValue<Vector2>();
        Vector3 move = new Vector3(input.x, 0, input.y);
        move = Vector3.ClampMagnitude(move, 1f);        if (move != Vector3.zero)
            transform.forward = move;        // Jump using WasPressedThisFrame()
        if (groundedPlayer && jumpAction.action.WasPressedThisFrame())
        {
            playerVelocity.y = Mathf.Sqrt(jumpHeight * -2f * gravityValue);
        }        // Apply gravity
        playerVelocity.y += gravityValue * Time.deltaTime;        // Move
        Vector3 finalMove = move * playerSpeed + Vector3.up * playerVelocity.y;
        controller.Move(finalMove * Time.deltaTime);
    }
}
```
