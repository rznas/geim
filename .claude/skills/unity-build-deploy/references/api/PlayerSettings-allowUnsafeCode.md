<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-allowUnsafeCode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allow unsafe C# code to be compiled for predefined assemblies.

Enable to pass `/unsafe` to the C# compiler when compiling predefined assemblies, such as `Assembly-CSharp.dll`. This setting only affects code that isn't compiled into separate assemblies via `.asmdef` files. Enable this only if your project requires direct pointer manipulation for extreme performance or native C++ interoperability. For general high-performance data handling, consider using `Unity.Collections` or `System.Span<T>` first.

**Warning:** Code compiled with `/unsafe` flag can bypass the .NET runtime's memory safety. An invalid memory access typically crashes the application or the Editor without a stack trace.

**Note:** For `.asmdef` assemblies, enable the **Allow 'unsafe' Code** checkbox in the Assembly Definition Inspector instead.
