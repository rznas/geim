<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-useSubStepping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether to use simulation sub-stepping during a simulation step.

When the simulation is set to run per-frame by setting the Physics2D.simulationMode to Update or Script, this option will control if simulation sub-stepping can be used.

When low frame-rate conditions occur, the simulation will be simulated with large time-steps. This results in a lower accuracy simulation. If the frame-rate becomes too low, the simulation will begin to break down resulting in joints being completely wrong, impulses being very large and rigidbodies moving eratically. This situation is known as "simulation explosion" meaning that the simulation is essentially in a failure condition which often cannot be recovered from without the scene being reloaded, effectively resetting the physics scene state. Obviously this should be avoided.

To avoid this situation, simulation sub-stepping can be used. It achieves this by monitoring if the frame-rate has reduced below a specified threshold controlled by Physics2D.minSubStepFPS. If it hasn't reduced below this threshold then a normal simulation step will occur. However if it has reduced below this threshold then the physics system will perform sub-stepping. Sub-stepping works by splitting up the current frame-rate delta-time into multiple sub-steps, each a higher frequency. Doing this ensures that the physics is always simulated using a frequency equal to or higher than the specified Physics2D.minSubStepFPS. This effectively guarantees a stable simulation.

The penalty of using this feature is that sub-stepping (when the above threshold has been exceeded) has an additional CPU costs due to the fact that the simulation is being run multiple times although this can be reduced by not calculating contacts for all sub-steps as controlled by Physics2D.useSubStepContacts. The cost of this should be monitored with the Unity Profiler using the Physics 2D Module.

The threshold is controlled by Physics2D.minSubStepFPS and the maximum number of sub-steps allowed is controlled by Physics2D.maxSubStepCount.

Additional resources: Physics2D.maxSubStepCount, Physics2D.minSubStepFPS, PhysicsScene2D.subStepCount and PhysicsScene2D.subStepLostTime.
