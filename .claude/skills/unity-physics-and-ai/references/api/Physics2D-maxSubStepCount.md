<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-maxSubStepCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of simulation sub-steps allowed per-frame when simulation sub-stepping is enabled.

When simulation sub-stepping is enabled with Physics2D.useSubStepping, this property is used to control the maximum number of simulation sub-steps that will occur.

When sub-stepping occurs, multiple simulation sub-steps will happen. Running too many simulation sub-steps will result in poor performance. Indeed, the reason that sub-stepping is used is because of a low frame-rate situation so care needs to be taken to ensure that the situation is not made worse by running too many simulation sub-steps.

If the required number of simulation sub-steps exceed the allowed maximum and the frame-rate cannot be divided into updates at or higher than the Physics2D.minSubStepFPS then only the maximum number of sub-steps are used. This results in time being "lost" in the simulation with the benefit that the cost of sub-stepping is restrained. The total amount of "lost" time can be read from PhysicsScene2D.subStepLostTime. The number of simulation sub-steps taken in the last simulation step can be read from PhysicsScene2D.subStepCount. The cost of this should be monitored with the Unity Profiler using the Physics 2D Module.

Additional resources: Physics2D.useSubStepping, Physics2D.minSubStepFPS, PhysicsScene2D.subStepCount and PhysicsScene2D.subStepLostTime.
