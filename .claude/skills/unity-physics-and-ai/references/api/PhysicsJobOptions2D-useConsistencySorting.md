<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsJobOptions2D-useConsistencySorting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should physics simulation sort multi-threaded results to maintain processing order consistency?

When executing simulation steps on multiple CPU threads, separate batches of data are produced. Processing these separate batches reduces determinism in processing order, although produces faster results. If maintaining a consistent processing order becomes important to the simulation, then set this option to true. However, this involves sorting results, which can reduce overall performance.
