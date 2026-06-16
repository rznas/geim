<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Il2CppCompilerConfiguration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

C++ compiler configuration used when compiling IL2CPP generated code.

### Properties

| Property | Description |
| --- | --- |
| Debug | Debug configuration turns off all optimizations, which makes the code quicker to build but slower to run. |
| Release | Release configuration enables optimizations, so the compiled code runs faster and the binary size is smaller but it takes longer to compile. |
| Master | Master configuration enables all possible optimizations, squeezing every bit of performance possible. For instance, on platforms that use the MSVC++ compiler, this option enables link-time code generation. Compiling code using this configuration can take significantly longer than it does using the Release configuration. Unity recommends building the shipping version of your game using the Master configuration if the increase in build time is acceptable. |
