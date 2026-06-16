<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetComputeTextureParam.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| computeShader | ComputeShader to set parameter for. |
| kernelIndex | Which kernel the texture is being set for. See ComputeShader.FindKernel. |
| name | Name of the texture variable in shader code. |
| nameID | Property name ID. Use Shader.PropertyToID to get this ID. |
| rt | Texture value or identifier to set, see RenderTargetIdentifier. |
| mipLevel | Optional mipmap level of the read-write texture. |
| element | Optional parameter that specifies the type of data to set from the RenderTexture. |

### Description

Adds a command to set a texture parameter on a ComputeShader.

Textures and buffers are set per-kernel. Use ComputeShader.FindKernel to find kernel index by function name. Please note that the mipLevel parameter is ignored unless the shader specifies a read-write (unordered access) texture.

By specifying a `RenderTextureSubElement`, you can indicate which type of data to set from the RenderTexture. The possible options are: RenderTextureSubElement.Color, RenderTextureSubElement.Depth, and RenderTextureSubElement.Stencil.

Additional resources: DispatchCompute, SetComputeFloatParam, SetComputeFloatParams, SetComputeIntParam, SetComputeIntParams, SetComputeMatrixParam, SetComputeMatrixArrayParam, SetComputeVectorParam, SetComputeVectorArrayParam, SetComputeBufferParam, RenderTextureSubElement.
