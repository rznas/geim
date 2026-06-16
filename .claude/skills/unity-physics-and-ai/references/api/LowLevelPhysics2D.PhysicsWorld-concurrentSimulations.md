<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld-concurrentSimulations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls how many simulations can be started in parallel. Whilst running simulations in parallel can improver overall performance, workers should ideally be left free for the simulation solver otherwise it may degrade solving performance. The actual quantity of workers used will always be capped to those available on the current device. If the total number of workers available is below 4 then parallel simulation won't occur as generally this would reduce overall performance, however parallel solving of each simulation using workers will still be used. This should not be confused with the quantity of workers used when solving a simulation.
