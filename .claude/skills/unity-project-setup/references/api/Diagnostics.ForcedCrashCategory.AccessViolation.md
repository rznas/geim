<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Diagnostics.ForcedCrashCategory.AccessViolation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Cause a crash by performing an invalid memory access.

The invalid memory access is performed on each platform as follows:

**OSX, Android**: Invoked using **raise(SIGSEGV)**;

**Windows, Windows Store**: Invoked using **RaiseException** with EXCEPTION_ACCESS_VIOLATION

**Other**: Invoked using **int* p = NULL; *p = 5;**
