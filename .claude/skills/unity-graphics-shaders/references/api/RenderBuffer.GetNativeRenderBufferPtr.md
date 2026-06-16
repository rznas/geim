<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderBuffer.GetNativeRenderBufferPtr.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IntPtr** Opaque pointer that you can use in a low-level native plug-in interface.

### Description

Returns the native RenderBuffer: an opaque pointer to a Unity struct that you can use with Unity's low-level native plug-in interface.

The RenderBuffer.GetNativeRenderBufferPtr method retrieves the native pointer to a RenderBuffer. This pointer allows direct interaction with the underlying graphics API. It provides low-level access to Unity's rendering system, enabling advanced integrations like external plugins. Use this method when you need precise control over a RenderBuffer, for example, to set up external rendering systems or to implement custom native libraries. Call GetNativeRenderBufferPtr() on a valid RenderBuffer instance, such as the color or depth target from a RenderTexture.

Additional resources: RenderBuffer,native-plugin-interface.
