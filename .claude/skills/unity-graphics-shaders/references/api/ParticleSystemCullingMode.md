<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemCullingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The action to perform when the Particle System is offscreen.

### Properties

| Property | Description |
| --- | --- |
| Automatic | For looping effects, the simulation is paused when offscreen, and for one-shot effects, the simulation will continue playing. |
| PauseAndCatchup | Pause the Particle System simulation when it is offscreen, and perform an extra simulation when the system comes back onscreen, creating the impression that it was never paused. Use ParticleSystemCullingMode.AlwaysSimulate instead if the particle system moves, especially if the **Simulation Space** is set to **World**. Otherwise the bounds Unity uses for culling might not be accurate. |
| Pause | Pause the Particle System simulation when it is offscreen. |
| AlwaysSimulate | Continue simulating the Particle System when it is offscreen. |
