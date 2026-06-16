<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.SetTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| kernelIndex | For which kernel the texture is being set. See FindKernel. |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Name of the buffer variable in shader code. |
| texture | Texture to set. |
| mipLevel | Optional mipmap level of the read-write texture. |
| element | Optional parameter that specifies the type of data to set from the RenderTexture. |

### Description

Set a texture parameter.

This function can either set a regular texture that is read in the compute shader, or an output texture that is written into by the shader. For an output texture, it has to be a RenderTexture with random write flag enabled, see RenderTexture.enableRandomWrite.

Please note that the mipLevel parameter is ignored unless the shader specifies a read-write (unordered access) texture.

Buffers and textures are set per-kernel. Use FindKernel to find kernel index by function name.

By specifying a `RenderTextureSubElement`, you can indicate which type of data to set from the RenderTexture. The possible options are: RenderTextureSubElement.Color, RenderTextureSubElement.Depth, and RenderTextureSubElement.Stencil.

Additional resources: FindKernel, Additional resources: SetFloat, SetFloats, SetInt, SetInts, SetBool, SetBuffer, SetMatrix, SetMatrixArray, SetVector, SetVectorArray., RenderTexture.enableRandomWrite, RenderTextureSubElement.
