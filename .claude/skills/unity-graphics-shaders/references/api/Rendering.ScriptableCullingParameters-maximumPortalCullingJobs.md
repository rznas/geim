<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableCullingParameters-maximumPortalCullingJobs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This parameter controls how many active jobs contribute to occlusion culling.

The value must be in the range of 1 to 16. The default value is 6. The best amount of jobs depends on your scene.

 When the culling system performs culling in the scene, it can divide the area on the screen into a grid. Each job handles a cell in the grid.

 The higher the job count, the more cells are in the grid and the smaller they are. If you have more jobs with smaller workloads, Unity performs better by culling faster.

 **Note:** Each job has some overhead, so adding more jobs does not always increase performance. It takes a little effort to start a thread and join the results. If your performance is low, try adjusting this value to a lower number.

 Additional resources: ScriptableCullingParameters.cullingJobsLowerLimit, ScriptableCullingParameters.cullingJobsUpperLimit.
