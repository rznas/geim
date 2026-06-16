<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUserBuildSettings-buildWithDeepProfilingSupport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables Deep Profiling support in the Player.

Allow the Profiler to process all your script code and record every function call, returning detailed profiling data.

**Note:** A Player might run significantly slower if `EnableDeepProfilingSupport` is enabled.

When this option is enabled, additional checks are inserted at the beginning and end of every C# Method. These checks will continually test if the Player is currently profiled in Deep Profile mode or not, which adds some overhead to their execution time. If the Player is indeed profiled in Deep Profile mode, the time to execute the method is going to be recorded, which adds some additional overhead. The overhead will not be fully attributed to the method that has been instrumented like this, but will affect the recorded execution time of the calling method as well. You can also set this property in the Unity Editor using the Deep Profiling setting on the **Build Profiles** window.

Additional resources: BuildOptions.EnableDeepProfilingSupport.
