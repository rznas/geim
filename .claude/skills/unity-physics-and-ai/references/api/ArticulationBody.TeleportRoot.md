<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.TeleportRoot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The new position of the root articulation body. |
| rotation | The new orientation of the root articulation body. |

### Description

Teleport the root body of the articulation to a new pose.

Articulations are immutable once created, so it's not possible to change positions, orientations or velocities of the articulation bodies. However, you can still move the root body of the articulation with this function. To do so, call the function with the root body of the articulation. Assign zero vectors to ArticulationBody.linearVelocity and ArticulationBody.angularVelocity of the root articulation to reset the movement after ArticulationBody.TeleportRoot.
