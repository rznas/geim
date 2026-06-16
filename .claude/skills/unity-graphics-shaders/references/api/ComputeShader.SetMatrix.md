<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.SetMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Variable name in shader code. |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| val | Value to set. |

### Description

Set a Matrix parameter.

Constant buffers are shared between all kernels in a single compute shader asset. Therefore this function affects all kernels in this ComputeShader.

Additional resources: SetFloat, SetFloats, SetInt, SetInts, SetBool, SetBuffer, SetMatrixArray, SetTexture, SetVector, SetVectorArray.
