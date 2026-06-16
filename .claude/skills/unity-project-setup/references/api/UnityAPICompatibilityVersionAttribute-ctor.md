<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityAPICompatibilityVersionAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| version | Unity version that this assembly is compatible with. |
| checkOnlyUnityVersion | Must be set to true. |

### Description

Initializes a new instance of UnityAPICompatibilityVersionAttribute.

Use this overload during the development cycle to avoid the AssemblyUpdater check that is performed on game code built outside of Unity and imported as assemblies. You can also avoid this check by passing disable-assembly-updater as a command line argument (see the Unity Manual for more details).

### Parameters

| Parameter | Description |
| --- | --- |
| version | Unity version that this assembly is compatible with. |

### Description

Initializes a new instance of UnityAPICompatibilityVersionAttribute. This overload has been deprecated.

### Parameters

| Parameter | Description |
| --- | --- |
| version | Unity version that this assembly is compatible with. |
| configurationAssembliesHashes | A comma-separated list comprised of the assembly name and attribute hash pairs. For example, assemblyname:hash,assemblyname:hash. |

### Description

Initializes a new instance of UnityAPICompatibilityVersionAttribute. This constructor is used by internal tooling.
