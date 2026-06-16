<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.ResetShadingRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add a "reset all shading rate states and images to their defaults" command.

In a draw call, the final shading rate is influenced by three key components: the base shading rate, shading rate combiners, and the shading rate image. The base shading rate serves as the default when no other specifications are provided. The shading rate combiners dictate the manner in which the base shading rate interacts with the shading rate image. The command resets the base shading rate to ShadingRateFragmentSize.FragmentSize1x1, the combiners to [ ShadingRateCombiner.Keep, ShadingRateCombiner.Keep ] and the shading rate image to `null`. It's essential to note that Unity currently does not offer complete support for variable rate shading, and the associated method is reserved for future use.

Additional resources: CommandBuffer.SetShadingRateImage, SystemInfo.supportsVariableRateShading.
