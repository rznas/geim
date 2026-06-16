<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetShadingRateFragmentSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shadingRateFragmentSize | Shading rate to set as the base rate. |

### Description

Add a "set base shading rate" command.

In a draw call, the final shading rate is influenced by three key components: the base shading rate, shading rate combiners, and the shading rate image. The base shading rate serves as the default when no other specifications are provided. The shading rate combiners dictate the manner in which the base shading rate interacts with the shading rate image. If not explicitly specified, the default ShadingRateFragmentSize.FragmentSize1x1 is employed. It's essential to note that Unity currently does not offer complete support for variable rate shading, and the associated method is reserved for future use.

Additional resources: SystemInfo.supportsVariableRateShading.
