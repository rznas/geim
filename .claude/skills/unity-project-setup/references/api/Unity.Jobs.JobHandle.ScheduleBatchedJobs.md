<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.JobHandle.ScheduleBatchedJobs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Makes Schedule methods available to worker threads.

By default, jobs are only put on a local queue when using job Schedule methods. `ScheduleBatchedJobs` makes them available to the worker threads to execute. The job system intentionally delays job execution until you call `ScheduleBatchedJobs` manually because the cost of waking up worker threads can be expensive. It's best practic to delay waking up worker threads until a few jobs have been scheduled. If you're scheduling jobs in a loop, wait to schedule the jobs until the end of the loop. If you do significant amounts of work on the main thread between scheduling jobs, then it can make sense to `ScheduleBatchedJobs` between each job.
