<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/managing-update-order.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Managing update and execution order

Unity runtime applications run in a loop, where the engine repeatedly processes input, updates game state, and renders frames. This is commonly called the game or Player loop. Traditional component-based Unity projects use MonoBehaviour script components to hook into the Player loop through a series of built-in callbacks called event functions, which provide the opportunity to update your **GameObjects** every frame, or in response to specific events.

Knowing the execution order can help you customize and optimize your project. For example, you might need to ensure some setup work always happens before the first frame update, or that **scripts** controlling the engine of a vehicle always run before those that control its steering.

| **Topic** | **Description** |
| --- | --- |
| **Script execution order** | Understand how Unity prioritizes execution of individual MonoBehaviour scripts. |
| **Event functions** | Event functions are a set of built-in callbacks which you can implement on your MonoBehaviour-derived scripts to respond to core Engine events related to physics, rendering, input, **scene** loading, and object lifecycles. |
| **Event function execution order** | Understand the execution order of Unity’s built-in event functions so you can respond to events and update the state of your game in the right order. |
| **Customizing the Player loop** | Customize the Player loop to change the order in which Unity updates systems in each iteration of the loop. |
| **Using a custom update manager** | Create an update manager to handle many per-frame updates. |
| **Inspector-configurable custom events** | Create your own custom events to configure persistent (lasting between Edit mode and Play mode) callbacks in the **Inspector** window. |

## Additional resources

- Per frame updates
- PlayerLoop API reference
