<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationScriptPlayable.SetProcessInputs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The new value for processing the inputs or not. |

### Description

Sets the new value for processing the inputs or not.

In some cases, like for custom mixers, it is wanted to have full control over which inputs are processed or not. This method allows to set that: when set to `true` (the default value), all the inputs are processed before processing the current AnimationScriptPlayable; when set to `false`, the playable inputs aren't processed and the user can force to process specific inputs using AnimationStream.GetInputStream on the `stream` provided with the methods in IAnimationJob.

Additional resources: AnimationStream.
