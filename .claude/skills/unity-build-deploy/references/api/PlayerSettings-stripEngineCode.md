<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-stripEngineCode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Remove unused Engine code from your build (IL2CPP-only).

If this is enabled, unused modules and classes of the Unity Engine codebase will be removed in IL2CPP builds. This will result in smaller binary size. It is recommended to use this setting, however, you may want to disable it if you suspect this causes issues with your project. Note that byte code stripping of managed assemblies is always enabled for the IL2CPP scripting backend.
