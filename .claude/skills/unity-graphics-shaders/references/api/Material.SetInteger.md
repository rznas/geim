<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetInteger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| value | Integer value to set. |
| name | Property name, e.g. "_SrcBlend". |

### Description

Sets a named integer value.

When setting values on materials using the Standard Shader, you should be aware that you may need to use EnableKeyword to enable features of the shader that were not previously in use. For more detail, read Accessing Materials via Script.
