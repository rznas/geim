<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Security.LoadAndVerifyAssembly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assemblyData | Assembly to verify. |
| authorizationKey | Public key used to verify assembly. |

### Returns

**Assembly** Loaded, verified, assembly, or null if the assembly cannot be verfied.

### Description

Loads an assembly and checks that it is allowed to be used in the webplayer. (Web Player is no Longer Supported).

This function used to relate to the chain of trust system used by the webplayer in earlier versions of unity.

The single argument version of this API will always issue an error message. An authorisation key is always needed.

Note that web player is not supported from 5.4.0, so this function no longer serves a purpose and will be deprecated.
