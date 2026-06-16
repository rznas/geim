<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationScriptPlayable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Playable that can run a custom, multi-threaded animation job.

This playable allows to create a custom C# job that will give read and write access to the AnimationStream during the animation process pass in the PlayableGraph. The C# job must implement the interface IAnimationJob.

NOTE: You can use PlayableExtensions methods with AnimationScriptPlayable objects.

Additional resources: IAnimationJob, and AnimationScriptPlayable.Create.

### Public Methods

| Method | Description |
| --- | --- |
| GetJobData | Gets the job data contained in the playable. |
| GetProcessInputs | Returns whether the playable inputs will be processed or not. |
| SetJobData | Sets a new job data in the playable. |
| SetProcessInputs | Sets the new value for processing the inputs or not. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Creates an AnimationScriptPlayable in the PlayableGraph. |
