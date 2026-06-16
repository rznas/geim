<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationStage.RunSimulation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This stage advances the scene in time.

Specifically, this stage:

- Clears stored contact, trigger, and joint break events.
- Updates all vehicles forward in time.
- Advances the physics scene forward in time.
- Invokes the Physics.ContactModifyEvent.
- Reads and stores contact, trigger, and joint break events.
