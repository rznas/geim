<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/script-compilation-burst.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Burst compilation

Burst is a compiler that works on a subset of C# referred to in the Unity context as High-Performance C# (HPC#). Burst uses [LLVM](https://llvm.org/) to translate .NET [Intermediate Language (IL)](https://learn.microsoft.com/en-us/dotnet/standard/managed-code) to code that’s optimized for performance on the target CPU architecture.

Burst was originally designed for use with Unity’s job system. Jobs are structs that implement the `IJob` interface and represent small units of work that can run in parallel to make best use of all available CPU cores. Designing or refactoring your project to split work into Burst-compiled jobs can significantly improve the performance of CPU-bound code. For more information, refer to Write multithreaded code with the job system.

Aside from jobs, Burst can also compile static methods, as long as the code inside them belongs to the supported subset of C#. For more information on what’s included in High-Performance C#, refer to HPC# overview.

Burst is central to Unity’s Entity Component System (ECS) technologies, which includes a series of interdependent packages that work together to produce high performance code. However, Burst can be used independently of ECS and can be integrated into any Unity project that uses supported C# features.

For more information on Burst, refer to the [Burst compiler package documentation](https://docs.unity3d.com/Packages/com.unity.burst@latest).

## Burst’s role in the compilation pipeline

Burst is not a complete scripting back end because it only supports a subset of C#. It can’t replace Mono or IL2CPP in your project but is supplemental to either of them.

When you include the Burst package in your project, the scripting back end compiles the code by default and Burst compiles whichever Burst-compatible parts of it are marked for Burst compilation.

Your C# **scripts** compile to Intermediate Language (IL) as usual. For methods marked for Burst, that IL is further compiled by Burst into native code. Burst compiles just-in-time (JIT) in the Unity Editor’s Play mode but ahead-of-time (AOT) in Player builds.

The subset of C# supported by Burst doesn’t support managed objects. Unity has packages designed to provide Burst-compatible versions of common types and data structures. The [Collections](https://docs.unity3d.com/Packages/com.unity.collections@latest) package offers Burst-compatible collections such as arrays and lists, and [Unity Mathematics](https://docs.unity3d.com/Packages/com.unity.mathematics@latest) offers Burst-compatible mathematics functions.

## Compiling with Burst

Code is Burst compiled if the following conditions are met:

- The code is Burst-compatible.
- Burst compilation is enabled, either through Burst AOT Settings for Player builds or through the Burst menu for Unity Editor code.
- The code is explicitly marked with the `[BurstCompile]` attribute or is referenced from code that is.

You can use the scripting symbol `ENABLE_BURST_AOT` to conditionally compile sections of your code only when the Burst **AOT compilation** setting is enabled.

For more information, refer to Burst compilation

## Additional resources

- [Burst compiler package documentation](https://docs.unity3d.com/Packages/com.unity.burst@latest)
- Job system
