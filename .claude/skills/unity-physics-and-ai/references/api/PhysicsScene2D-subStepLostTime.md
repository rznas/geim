<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene2D-subStepLostTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The amount of simulation time that has been "lost" due to simulation sub-stepping hitting the maximum number of allowed sub-steps.

When simulation sub-stepping occurs, the number of sub-steps that run are limited to Physics2D.maxSubStepCount. This can result is "lost" simulation time which is monitored and is available for analysis here. The cost of sub-stepping should be monitored with the Unity Profiler using the Physics 2D Module.

Additional resources: Physics2D.useSubStepping, Physics2D.maxSubStepCount, Physics2D.minSubStepFPS and PhysicsScene2D.subStepCount.
