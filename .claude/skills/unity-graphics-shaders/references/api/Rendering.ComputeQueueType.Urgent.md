<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ComputeQueueType.Urgent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This queue type would be the choice for compute tasks requiring processing as soon as possible and would be prioritised over the graphics queue.

Note due to the way that Unity internally deferrs it's submission of command buffers to the GPU users should not expect compute shader dispatches sent to Urgent async compute queues to complete and be available on the CPU immediately. On some platforms it is possible for the OS to schedule GPU work that would take priority over urgent async compute tasks.
