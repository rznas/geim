<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationStage.PublishSimulationResults.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This stage publishes simulation results.

Specifically, the stage:

- Applies latest Rigidbody poses to corresponding Transform components.
- Applies latest ArticulationBody poses to corresponding Transform components.
- Invokes OnCollision, OnTrigger, OnJointBreak, and Physics.ContactEvent events.
