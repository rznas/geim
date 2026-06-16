<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent-velocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access the current velocity of the NavMeshAgent component, or set a velocity to control the agent manually.

Reading the variable will return the current velocity of the agent based on the crowd simulation.

Setting the variable will override the simulation (including: moving towards destination, collision avoidance, and acceleration control) and command the NavMesh Agent to move using the specific velocity directly. When the agent is controlled using a velocity, its movement is still constrained on the NavMesh.

Setting the velocity directly, can be used for implementing player characters, which are moving on NavMesh and affecting the rest of the simulated crowd. In addition, setting priority to high (a small value is higher priority), will make other simulated agents to avoid the player controlled agent even more eagerly.

It is recommended to set the velocity each frame when controlling the agent manually, and if releasing the control to the simulation, set the velocity to zero. If agent’s velocity is set to some value and then stopped updating it, the simulation will pick up from there and the agent will slowly decelerate (assuming no destination is set).

Note that reading the velocity will always return value from the simulation. If you set the value, the effect will show up in the next update. Since the returned velocity comes from the simulation (including avoidance and collision handling), it can be different than the one you set.

The velocity is specified in distance units per second (same as physics), and represented in global coordinate system.
