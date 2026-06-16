<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/performance-managed-memory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Managed memory

Unity’s managed memory system is a C# scripting environment based on the Mono or **IL2CPP** Virtual Machines (VMs). The benefit of the managed memory system is that it manages the release of memory, so you don’t need to manually request the release of memory through your code. It makes use of a garbage collector to automatically free memory allocations.

| **Topic** | **Description** |
| --- | --- |
| **Managed memory introduction** | Automatically manage the release and allocation of memory in your application. |
| **Garbage collector introduction** | Reclaim unused memory in your application. |
| **Garbage collection modes** | Overview of the different ways that the garbage collector runs. |
| **Configuring garbage collection** | Set up the garbage collector in your project. |
| **Tracking garbage collection allocations** | Monitor when your application performed garbage collection. |
| **Avoid C# reflection overhead** | Reduce garbage collector overhead by avoiding use of C# reflection at runtime. |

## Additional resources

- [Memory Profiler package](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest)
- Memory in Unity introduction
- Memory Profiler module
