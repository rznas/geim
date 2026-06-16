<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Recorder.FilterToCurrentThread.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Configures the recorder to only collect data from the current thread.

By default, a Recorder collects samples from its corresponding Sampler regardless of which thread those samples occur on. Call this function to limit sample collection to the current thread only.

Limiting sample collection to the current thread is particularly useful when performing tests with very commonly-used samplers (such as GC.Alloc), as ensuring that background threads are not active during the test can be difficult.

Reset the Recorder to collect samples from all threads by calling Recorder.CollectFromAllThreads.

Note that when you have more than one Recorder object for the same Sampler, this filter setting affects all of them. If all of these Recorder instances are destroyed, any new Recorder instances obtained for the Sampler revert to the default behavior and collect samples from all threads. However, because it is difficult to predict the timing of object destruction, always call Recorder.CollectFromAllThreads to reset sample collection.
