<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-proceduralSimulationSupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether this system supports Procedural Simulation.

Internally, each of the Built-In Particle Systems has two modes of operation: procedural and non-procedural.

In procedural mode, it is possible to know the state of a Built-in Particle System for any point in time (past and future) whereas a non-procedural system is unpredictable. This means that it is possible to prewarm a system quickly by fast forwarding the procedural system. This also allows Unity to calculate the bounding box of the Built-in Particle System more efficiently.

In order to support Procedural Simulation, you can only use a subset of the Built-in Particle System modules and properties. For example, using the Limit Velocity over Lifetime module will disable Procedural Simulation. Additionally, modifying any properties from script whilst the system is playing will also disable Procedural Simulation.

To discover if you are using any properties that disable this feature, a small speech bubble appears in the upper right corner of the **Inspector** window. The tooltip for this icon gives you details about why Procedural Simulation is disabled.
