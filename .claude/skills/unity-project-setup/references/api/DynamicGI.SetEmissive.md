<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DynamicGI.SetEmissive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderer | The Renderer that should get a new color. |
| color | The emissive Color. |

### Description

Allows to set an emissive color for a given renderer quickly, without the need to render the emissive input for the entire system.

Note that a subsequent DynamicGI.UpdateMaterials call on *any* renderer within the system will clear the effects of DynamicGI.SetEmissive.

 Additional resources: UpdateMaterials.
