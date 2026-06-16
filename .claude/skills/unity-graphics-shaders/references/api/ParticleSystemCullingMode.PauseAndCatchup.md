<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemCullingMode.PauseAndCatchup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Pause the Particle System simulation when it is offscreen, and perform an extra simulation when the system comes back onscreen, creating the impression that it was never paused. Use ParticleSystemCullingMode.AlwaysSimulate instead if the particle system moves, especially if the **Simulation Space** is set to **World**. Otherwise the bounds Unity uses for culling might not be accurate.
