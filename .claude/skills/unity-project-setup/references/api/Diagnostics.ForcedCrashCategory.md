<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Diagnostics.ForcedCrashCategory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the category of crash to cause when calling ForceCrash().

### Properties

| Property | Description |
| --- | --- |
| AccessViolation | Cause a crash by performing an invalid memory access.The invalid memory access is performed on each platform as follows: |
| FatalError | Cause a crash using Unity's native fatal error implementation. |
| Abort | Cause a crash by calling the abort() function. |
| PureVirtualFunction | Cause a crash by calling a pure virtual function to raise an exception. |
| MonoAbort | Cause a crash by calling the abort() function within the Mono dynamic library. |
