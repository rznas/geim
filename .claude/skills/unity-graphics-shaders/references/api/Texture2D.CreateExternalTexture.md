<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.CreateExternalTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nativeTex | Native 2D texture object. |
| width | Width of texture in pixels. |
| height | Height of texture in pixels. |
| format | Format of underlying texture object. |
| mipmap | Does the texture have mipmaps? |
| linear | Is texture using linear color space? |

### Description

Creates a Unity Texture out of an externally created native texture object.

This function is mostly useful for native code plugins that create platform specific texture objects outside of Unity, and need to use these textures in Unity Scenes. It is also possible to create a texture in Unity and get a pointer to the underlying platform representation; see Texture.GetNativeTexturePtr.

Parameters passed to CreateExternalTexture should match what the texture actually is; and the underlying texture should be 2D.

For **Direct3D**-like devices, the `nativeTex` parameter is a pointer to the underlying **Direct3D** base type, from which a texture can be created. They can be:
 • **D3D11**: `ID3D11ShaderResourceView*` or `ID3D11Texture2D*`
 • **D3D12**: `ID3D12Resource*`

For **OpenGL**/**OpenGL ES**, the `nativeTex` parameter is a `GLuint`.

For **Metal**, the `nativeTex` parameter is an `id<MTLTexture>`.

For **Vulkan**, the `nativeTex` parameter is a `VkImage*`.

Additional resources: UpdateExternalTexture, Texture.GetNativeTexturePtr.
