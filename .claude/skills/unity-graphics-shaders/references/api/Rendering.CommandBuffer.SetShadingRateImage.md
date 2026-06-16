<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetShadingRateImage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shadingRateImage | The shading rate image to use with variable rate shading. |

### Description

Add a "set shading rate image" command.

In a draw call, the final shading rate is influenced by three key components: the base shading rate, shading rate combiners, and the shading rate image. The base shading rate serves as the default when no other specifications are provided. The shading rate combiners dictate the manner in which the base shading rate interacts with the shading rate image. An invalid RenderTargetIdentifier is the equivalent of ShadingRateFragmentSize.FragmentSize1x1 for images.

**Note**: To apply the shading rate value from the Shading Rate Image, set the ShadingRateCombiner for the fragment stage to `Override`, `Min`, or `Max`.

Additional resources: ShadingRateImage, SystemInfo.supportsVariableRateShading, CommandBuffer.SetShadingRateCombiner.
