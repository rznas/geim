<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.LowLevel.Unsafe.ScheduleMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for scheduling a managed job.

### Properties

| Property | Description |
| --- | --- |
| Run | Run a job immediately on calling thread. |
| Parallel | Schedule a job to run on multiple worker threads if possible. Jobs that can't run concurrently run on one thread only. |
| Single | Schedule a job to run on a single worker thread. |
