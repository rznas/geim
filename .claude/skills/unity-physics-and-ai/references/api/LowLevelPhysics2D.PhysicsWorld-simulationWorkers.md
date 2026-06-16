<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld-simulationWorkers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get/Set the simulation worker count for the world. A single simulation worker is always used for simulation therefore a worker count of one means single thread simulation only. The actual quantity of workers used will always be capped to those available on the current device and reading the property will return the number of workers actually being used by the device. Changing the worker count continuously is not recommend and will impact performance as it requires the task queue be recreated. See PhysicsWorldDefinition.simulationWorkers.
