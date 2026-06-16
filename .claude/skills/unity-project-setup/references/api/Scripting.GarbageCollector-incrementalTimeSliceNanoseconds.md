<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.GarbageCollector-incrementalTimeSliceNanoseconds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The target duration of a collection step when performing incremental garbage collection.

When you enable incremental garbage collection, the garbage collector spreads the amount of work required to free unused memory across a number of steps. In any single step, the garbage collector limits itself to the length of time specified by `incrementalTimeSliceNanoseconds`. By spreading out the workload, incremental garbage collection can help your game achieve a smoother frame rate (when garbage-collection hiccups are a problem). Use the Profiler to help identify whether garbage collection has an effect on frame rate smoothness.

The garbage collector might still choose to perform a regular, non-incremental collection cycle if your application runs low on memory or if the incremental steps cannot keep up with the garbage collection workload. While you can set the incremental GC time slice to limit how long each step runs, this is only a guideline — not a hard cap. Eventually, with enough allocations or memory pressure, a full garbage collection will be triggered regardless of the configured slice duration. Setting too short a time slice can be counterproductive in this regard and because each garbage collection step has a small amount of overhead. The default value of 3 ms (3000000 nanoseconds) is a good starting point and the selected duration should be always be significantly shorter than your target frame rate.

If you turn on Vsync by setting QualitySettings.vSyncCount greater than 0 or specify a frame rate with Application.targetFrameRate, Unity automatically uses any extra time remaining at the end of each frame for incremental garbage collection, regardless of the value of incrementalTimeSliceNanoseconds.

**Note**: The garbage collector uses the underlying platform timer, which can have a resolution as low as a whole millisecond. In other words, changing the value by a few nanoseconds might have no effect.

Enable incremental garbage collection in the PlayerSettings for a project. You can check whether incremental garbage collection is enabled with IsIncremental.

You can manually trigger an incremental garbage collection step with CollectIncremental.
