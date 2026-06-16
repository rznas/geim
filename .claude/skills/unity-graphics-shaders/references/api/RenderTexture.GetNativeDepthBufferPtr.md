<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture.GetNativeDepthBufferPtr.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IntPtr** Pointer to an underlying graphics API depth buffer resource.

### Description

Retrieve a native (underlying graphics API) pointer to the depth buffer resource.

Use this function to retrieve a pointer/handle corresponding to the depth buffer part of the RenderTexture, as it is represented on the native graphics API level. This can be used to enable depth buffer manipulation from native code plugins.

Use Texture.GetNativeTexturePtr to get a native pointer to the color buffer of a render texture, and this function to get to the depth buffer part. For Depth and ShadowMap render texture formats, the two functions return the same resource. The two functions will also return the same resource if anti aliasing is enabled in the project's quality settings.

Note that calling this function when using multi-threaded rendering will synchronize with the rendering thread (a slow operation), so best practice is to set up needed texture pointers only at initialization time.

Additional resources: Texture.GetNativeTexturePtr, Native code plugins.
