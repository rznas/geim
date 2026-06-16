<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/preferences-jobs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Jobs preferences reference

Contains preferences for the job system, which you can use to write simple and safe multithreaded code so that your application can use all its available CPU cores to execute code. The job system can improve the performance of your application. To open the preferences, go to **Edit > Preferences > Jobs** (macOS: **Unity > Settings > Jobs**).

| **Property** | **Function** |
| --- | --- |
| **Use Job Threads** | Disable **Use Job Threads** to run all jobs on the main thread. If you’re debugging and want to simplify the problem space and remove all parallelism, you can disable **Use Job Threads** to run all jobs immediately on the main thread when they are scheduled. Disabling **Use Job Threads** has the same effect as if you set JobsUtility.JobWorkerCount to 0.    **Use Job Threads** is enabled by default when the Editor restarts. |
| **Enable Jobs Debugger** | Disable **Enable Jobs Debugger** to remove the job system safety system checks which detect potential race conditions and prevent the bugs they can cause. Disable **Enable Jobs Debugger** if you want to monitor performance without the overhead of job system safety checks.    **Enable Jobs Debugger** is enabled by default when the Editor restarts. |
| **Leak Detection Level** | Select a mode for leak detection. Leak detection checks if allocations that are made with `MallocTracked` are freed with `FreeTracked`. If you do not free unmanaged memory, you will cause memory leaks which have a negative effect on memory usage and reduce performance. Memory leaks persist across domain reloads in the Editor.   In the Editor and development builds, **Enabled** is selected by default. In non-development builds, **Disabled** is the default mode for **Leak Detection Level**. Choose from the following:   **Disabled**: Do not detect unmanaged memory leaks.  **Enabled**: Perform a lightweight count of all memory leaks for each leak category. This option only prints the number of leaks as part of the domain unload process. Use the **Enabled With Stack Trace** leak detection mode to find detected leaks.  **Enabled With Stack Trace** (Editor and development builds only): Leak Detection reports the callstack of any `MallocTracked` allocation that is not deallocated with FreeTracked. **Enabled With Stack Trace** can add a performance cost to allocations. Only use **Enabled With Stack Trace** to intentionally track native memory leaks. **Enabled With Stack Trace**, like **Enabled**, reports leaks as part of the domain unload process. |

## Additional resources

- Job system overview
- Implement a custom NativeContainer
