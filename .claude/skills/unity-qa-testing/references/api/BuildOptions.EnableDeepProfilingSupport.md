<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildOptions.EnableDeepProfilingSupport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables Deep Profiling support in the Player.

Deep profiling allows to instrument all C# method calls.

**Note:** Enabling the `EnableDeepProfilingSupport` option might significantly slow down the Player, compared to one built with this option disabled. When enabled, additional checks are inserted at the beginning and end of every C# method. These checks continually test if the Player is currently profiled in Deep Profile mode or not, which adds some overhead to their execution time. If the Player is indeed profiled in Deep Profile mode, the method execution time is recorded, which adds some additional overhead. The overhead will not be fully attributed to the method that has been instrumented like this, but will affect the recorded execution time of the calling method as well.
