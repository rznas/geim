<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemJobs.IJobParticleSystemParallelForBatchExtensions.EarlyJobInit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gathers and caches reflection data for the internal job system's managed bindings. Unity is responsible for calling this method - don't call it yourself.

When the Jobs package is included in the project, Unity generates code to call EarlyJobInit at startup. This results in the following benefits:

- Job initialization doesn't lazily occur during job scheduling, which would increase the time it takes to schedule a job.
- Burst compiled code may schedule jobs because the reflection part of initialization, which is not compatible with burst compiler constraints, has already happened in EarlyJobInit.

**Note**: While the Jobs package code generator handles this automatically for all closed job types, you must register those with generic arguments (like IJobParticleSystemParallelForBatch&lt;MyJobType&lt;T&gt;&gt;) manually for each specialization with Unity.Jobs.RegisterGenericJobTypeAttribute.
