<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap.CreateExternalTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| size | The width and height of each face of the cubemap should be the same. |
| format | Format of underlying cubemap object. |
| mipmap | Does the cubemap have mipmaps? |
| nativeTex | Native cubemap texture object. |

### Description

Creates a Unity cubemap out of an externally created native cubemap object.

This function is mostly useful for native code plugins that create platform specific cubemap texture objects outside of Unity, and need to use these cubemaps in Unity Scenes. It is also possible to create a cubemap in Unity and get a pointer to the underlying platform representation; see Texture.GetNativeTexturePtr.

Parameters passed to CreateExternalTexture should match what the texture actually is; and the underlying texture should be a Cubemap (2D textures will not work).

For **Direct3D**-like devices, the `nativeTex` parameter is a pointer to the underlying **Direct3D** base type, from which a texture can be created. They can be:
 • **D3D11**: `ID3D11ShaderResourceView*` or `ID3D11Texture2D*`
 • **D3D12**: `ID3D12Resource*`

For **OpenGL**/**OpenGL ES**, the `nativeTex` parameter is a `GLuint`.

For **Metal**, the `nativeTex` parameter is an `id<MTLTexture>`.

For **Vulkan**, the `nativeTex` parameter is a `VkImage*`.

Additional resources: UpdateExternalTexture, Texture.GetNativeTexturePtr.
