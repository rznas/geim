<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSettings-maxJobWorkers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of worker threads that the build process can utilize when building a NavMesh with these settings.

A value between 1 and JobsUtility.JobWorkerCount (inclusive) causes the build process to schedule all of the work within that number of jobs when building a NavMesh. Each job computes as many NavMesh tiles as it can grab, after it has finished computing the previous tiles.
 A value of 0 or higher than `JobsUtility.JobWorkerCount` causes the build process to use all of the available worker threads. In this case, it computes each tile in its own separate job. The build process also computes each tile in a separate job when the number of tiles that need computing is less than the number of worker threads.

The default value is 0.

Additional resources: tileSize.
