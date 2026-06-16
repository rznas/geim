<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-minSubStepFPS.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The minimum FPS allowed for a simulation step before sub-stepping will be used.

When simulation sub-stepping is enabled with Physics2D.useSubStepping, this property is used as a FPS threshold below which simulation sub-stepping will occur. Specifically, when the current frame-rate is lower than this value, simulation sub-stepping will occur.

This value should be set to the frame-rate you expect your simulation to start performing poorly. Unfortunately this has to be determined on a project-by-project basis because it depends on the complexity of the simulation components used and their configuration. A good rule of thumb here though is that as frame-rates reduce to less than 30 FPS, any simulation would be extremely approximate but some projects are still fine even at these low frequencies. The cost of this should be monitored with the Unity Profiler using the Physics 2D Module.

Additional resources: Physics2D.useSubStepping, Physics2D.maxSubStepCount, PhysicsScene2D.subStepCount and PhysicsScene2D.subStepLostTime.
