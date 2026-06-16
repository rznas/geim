<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialEditor.FixupEmissiveFlag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| col | Emission color. |
| flags | Current global illumination flag. |

### Returns

**MaterialGlobalIlluminationFlags** The fixed up flag.

### Description

Returns a properly set global illlumination flag based on the passed in flag and the given color.

### Parameters

| Parameter | Description |
| --- | --- |
| mat | The material to be fixed up. |

### Description

Properly sets up the globalIllumination flag on the given Material depending on the current flag's state and the material's emission property.
