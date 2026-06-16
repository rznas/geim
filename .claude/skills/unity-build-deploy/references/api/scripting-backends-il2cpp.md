<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/scripting-backends-il2cpp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# IL2CPP scripting back end

The **IL2CPP** (Intermediate Language To C++) scripting back end is an alternative to Mono that compiles code ahead-of-time (AOT) and supports a wider range of platforms.

| **Topic** | **Description** |
| --- | --- |
| **Introduction to IL2CPP** | Understand IL2CPP’s role in Unity script compilation and how it works. |
| **IL2CPP runtime code checks** | Configure IL2CPP’s generation of C++ to enable or disable the inclusion of runtime safety features such as null reference and out of bounds checks. |
| **IL2CPP managed stack traces** | Configure IL2CPP compiler settings to produce more informative managed stack traces for easier debugging. |
| **Additional IL2CPP compiler arguments** | Supply custom additional arguments to the IL2CPP compiler from code. |
| **Linux IL2CPP cross-compiler** | Use the Linux IL2CPP cross-compiler to build Linux IL2CPP Players on any Standalone platform without needing to use the Linux Unity Editor or rely on Mono. |
| **IL2CPP limitations** | Understand the restrictions that apply on some AOT platforms when using IL2CPP as your scripting back end. |

## Additional resources

- Handling IL2CPP additional arguments
- Linux IL2CPP cross-compiler
- Managed stack traces
