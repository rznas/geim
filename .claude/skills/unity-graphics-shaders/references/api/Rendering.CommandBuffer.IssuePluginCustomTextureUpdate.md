<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.IssuePluginCustomTextureUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| callback | Native code callback to queue for Unity's renderer to invoke. |
| targetTexture | Texture resource to be updated. |
| userData | User data to send to the native plugin. |

### Description

Deprecated. Use CommandBuffer.IssuePluginCustomTextureUpdateV2 instead.

Send a texture update event to a native code plugin.
