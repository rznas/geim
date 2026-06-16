<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorUpdateMode.Fixed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Animator updates in the FixedUpdate loop. This is ideal for physics-driven animations that require frame rate independence.

This mode ensures that animation updates align with the physics engine's update loop, maintaining smooth and consistent physics interactions regardless of the frame rate. By default, it synchronizes with the FixedUpdate loop, but this can be reconfigured for specific project requirements. Essential for animations tightly coupled with physics simulations, such as character rigs and vehicle dynamics. Ensure Animator.animatePhysics is set to true for accurate synchronization with physics calculations and collision responses.
