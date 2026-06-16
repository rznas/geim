<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.IsGraphicsAPISupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The shader the pass belongs to. |
| passIdentifier | The identifier of the pass in the shader. |
| graphicsAPI | The graphics API to check against. |

### Returns

**bool** If the graphics API is supported, returns true. Otherwise, returns false.

### Description

Checks whether the given shader pass supports the provided graphics API.

Use this method to check if the shader pass has a `#pragma exclude_renderers` or `#pragma only_renderers` that excludes the `graphicsAPI`.

```csharp
ComputeShader FindComputeShader()
{
    return (ComputeShader)AssetDatabase.LoadAssetAtPath("Assets/Shaders/ShaderName.compute", typeof(ComputeShader));
}public void CheckComputeShaderSupportsD3D11()
{
    // Get a compute shader object to check
    var shader = FindComputeShader();
    // Check whether it supports D3D11
    bool supports = ShaderUtil.IsGraphicsAPISupported(shader, GraphicsDeviceType.Direct3D11);
    // Log the result
    Debug.Log("Compute shader supports D3D11: " + supports);
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The shader to check. |
| graphicsAPI | The graphics API to check against. |

### Returns

**bool** If the graphics API is supported, returns true. Otherwise, returns false.

### Description

Checks whether the given compute shader supports the provided graphics API.

Use this method to check if the compute shader has a `#pragma exclude_renderers` or `#pragma only_renderers` that excludes the `graphicsAPI`.

```csharp
public void CheckShaderPassSupportsD3D11()
{
    // Get a shader object to check
    var shader = Shader.Find("Custom/ShaderName");
    // Check whether the first pass of the first subshader supports D3D11
    bool supports = ShaderUtil.IsGraphicsAPISupported(shader, new PassIdentifier(0, 0), GraphicsDeviceType.Direct3D11);
    // Log the result
    Debug.Log("Shader pass supports D3D11: " + supports);
}
```
