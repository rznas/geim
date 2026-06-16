<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Sysroot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for implementing sysroots and toolchains for IL2CPP

### Properties

| Property | Description |
| --- | --- |
| HostArch | Returns name of the host architecture |
| HostPlatform | Returns name of the host platform |
| Name | Returns name of the sysroot |
| TargetArch | Returns name of the target architecture |
| TargetPlatform | Returns name of the target platform |

### Public Methods

| Method | Description |
| --- | --- |
| GetIl2CppAdditionalDefines | Returns an array of additional defines. |
| GetIl2CppAdditionalIncludeDirectories | Returns an array of additional include directories. |
| GetIl2CppAdditionalLibraries | Returns an array of additional static libraries. |
| GetIl2CppAdditionalLinkDirectories | Returns an array of additional link directories. |
| GetIl2CppArguments | Returns the next Il2Cpp argument on each call |
| GetIl2CppCompilerFlags | Returns compiler flags string to pass to Il2Cpp |
| GetIl2CppLinkerFlags | Returns linker flags string to pass to Il2Cpp |
| GetIl2CppLinkerFlagsFile | Returns linker flags file string to pass to Il2Cpp. |
| GetSysrootPath | Returns path to sysroot |
| GetToolchainPath | Returns path to toolchain |
| Initialize | Initializes sysroot |
