<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap.UpdateExternalTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nativeTexture | Native cubemap texture object. |

### Description

Updates Unity cubemap to use different native cubemap texture object.

This method is mostly useful for native code plugins that create platform specific cubemap texture objects outside of Unity, and need to use these cubemaps in Unity scenes. For a cubemap created with CreateExternalTexture, this method switches to another underlying cubemap texture object if/when it changes.

The actual contents of the native texture object will vary based on the native graphics API in use. For example, if DirectX is in use, the native texture object will need to be a pointer to an ID3D11ShaderResourceView. If OpenGL/OpenGL ES is in use, the native texture object should be a GLuint. If Metal, then the native texture object should be a MTLTexture.

Additional resources: CreateExternalTexture.
