<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsJobOptions2D-useMultithreading.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should physics simulation use multithreading?

Turning on multithreading executes the simulation steps using the job system, and uses the options in PhysicsJobOptions2D to control how to achieve that. Turning off multithreading executes the simulation only on the main thread, and does not use the options in PhysicsJobOptions2D.
