<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsLowLevelSettings2D-concurrentSimulations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls how many simulations can be started in parallel. Each one is started on its own worker and acts as its own main-thread. Workers should ideally be left free for the solver otherwise it may degrade solving performance. The actual quantity of workers used will always be capped to those available on the current device.

 If the total number of workers available is below 4 then parallel simulation won't occur however parallel solving using workers will. This should not be confused with the quantity of workers used when solving a simulation. See PhysicsWorldDefinition.simulationWorkers.
