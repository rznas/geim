<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/scripting-backends.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Scripting back ends

In Unity, the scripting back end is the runtime technology that compiles and executes your C# **scripts**. It determines how your code is turned into executable instructions and what runtime manages it on target platforms.

| **Topic** | **Description** |
| --- | --- |
| **Introduction to scripting back ends** | Understand the available **scripting backends** and their effects on your project. |
| **Mono scripting back end** | Mono is a stable, mature .NET runtime that provides a managed environment for the just-in-time (JIT) compilation of your C# code. |
| **IL2CPP scripting back end** | **IL2CPP** is Unity’s ahead-of-time (AOT) pipeline that converts C# intermediate language (IL) to C++, then compiles to native code. It’s required on several platforms where Mono and JIT are not supported. |

## Additional resources

- Unity .NET features
- Build profiles
