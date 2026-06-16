<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorUpdateMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls when and how the Animator component updates animations.

Use the `AnimatorUpdateMode` enum to control the timing animation updates. The timing of animation updates can affect how animations sync with your game's logic and physics.

- **Normal Mode** (AnimatorUpdateMode.Normal): Syncs animation updates with the game loop during the Update phase. Use this mode for animations that run independently of physics.
- **Fixed Mode** (AnimatorUpdateMode.Fixed): Syncs animation updates with the fixed update loop, primarily to align with the physics engine's updates. By default, physics evaluations happen during FixedUpdate, but you can adjust this loop to suit your project's requirements. Set Animator.animatePhysics to true to handle collisions and other physics interactions correctly.
- **Unscaled Time** (AnimatorUpdateMode.UnscaledTime): Keeps animations running at real-time speed, unaffected by time scaling. This is ideal for UI elements or effects that remain active when the game is paused.

Each mode affects how animations behave and interact. Select the mode that aligns with your game's needs to avoid issues like skipped frames or desynchronization.

Additional resources: Animator, Time, FixedUpdate, Animator.updateMode and FixedUpdate.

```csharp
// This script demonstrates changing the Animator update mode when pausing the game.
// Attach this script to a GameObject with an Animator component.

using UnityEngine;

public class PlayerController : MonoBehaviour
{
    private Animator animator;
    private bool isGamePaused = false;

    void Awake()
    {
        animator = GetComponent<Animator>();
        if (animator == null)
        {
            Debug.LogError("Animator component not found!");
            return;
        }
    }

    void Start()
    {
        // Set initial animator update mode to Normal for regular gameplay
        animator.updateMode = AnimatorUpdateMode.Normal;
    }

    void Update()
    {
        // Toggle pause with the "P" key
        if (Input.GetKeyDown(KeyCode.P))
        {
            isGamePaused = !isGamePaused;
            HandlePauseState(isGamePaused);
        }

        // Handle player movement input if the game is not paused
        if (!isGamePaused)
        {
            HandleMovement();
        }
    }

    private void HandleMovement()
    {
        // Basic movement logic
        float move = Input.GetAxis("Horizontal");
        animator.SetFloat("Speed", Mathf.Abs(move));

        // Additional Movement logic can be added here
    }

    private void HandlePauseState(bool pause)
    {
        if (pause)
        {
            animator.updateMode = AnimatorUpdateMode.UnscaledTime;
            Time.timeScale = 0f;  // Pause the game
        }
        else
        {
            animator.updateMode = AnimatorUpdateMode.Normal;
            Time.timeScale = 1f;  // Resume the game
        }

        Debug.Log("Game paused: " + pause + " - Animator update mode set to: " + animator.updateMode);
    }
}
```

Additional resources: Animator, Time, FixedUpdate, Animator.updateMode.

### Properties

| Property | Description |
| --- | --- |
| Normal | Animator updates in the Update loop, aligning with the main game loop for standard animation processing. |
| Fixed | Animator updates in the FixedUpdate loop. This is ideal for physics-driven animations that require frame rate independence. |
| UnscaledTime | Animator updates independently of Time.timeScale, maintaining real-time animation progression. |
