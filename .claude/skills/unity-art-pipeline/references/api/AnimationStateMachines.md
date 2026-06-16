<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/AnimationStateMachines.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Animation state machine

It’s common for a character or a **GameObject** to have several animations for the different actions it performs in a game. For example, a character might breath and sway slightly when idle, walk when commanded, and raise their arms when they fall from a platform. A sliding door might open, close, or jam.

Mecanim uses a **state machine** to arrange these actions. A state machine is a graph of nodes and connecting lines that resembles a flowchart. A state machine plays the animation linked to the current action and determines the next action. You can create a state machine for each character and GameObject in your **scene**.

| **Topic** | **Description** |
| --- | --- |
| **State machine basics** | Learn core state machine concepts and build animation flow in the **Animator window**. |
| **Animation states** | Configure states, motions, and defaults to control what each state plays. |
| **Animation parameters** | Control state logic with scriptable parameters. |
| **State machine transitions** | Simplify complex controllers with Entry and Exit transitions between state machines. |
| **Animation transitions** | Blend between states and define when transitions are triggered. |
| **Animation blend trees** | Blend similar motions smoothly using parameters and normalized time. |
| **State machine behaviors** | Attach behavior **scripts** to states to run code on enter, update, and exit. |
| **Sub-state machines** | Group related states into nested machines to keep large graphs manageable. |
| **Animation layers** | Separate animation with layered controllers, masks, and blending modes. |
| **State machine solo and mute** | Preview transitions faster by soloing key paths and muting irrelevant ones. |
| **Target matching** | Match character parts to precise world targets during specific animation windows. |

## Additional resources

- Humanoid Avatar
- Create an Animator Controller
