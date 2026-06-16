<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadingRateInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Encapsulate the informations and capabilities related to variable rate shading.

Additional resources: Variable Rate Shading.

### Static Properties

| Property | Description |
| --- | --- |
| availableFragmentSizes | Get the supported shading rate fragment sizes by the current platform. |
| graphicsFormat | Get the shading rate graphics format used by the current platform. |
| imageTileSize | Get the shading rate image tile size used by the current platform. |
| supportsPerDrawCall | Returns true if variable fragment shading rates per draw call are supported by the current graphics card for variable rate shading. Note that this feature is not currently supported in Unity.Additional resources: SystemInfo.supportsVariableRateShading. |
| supportsPerImageTile | Returns true if image-based fragment shading rates are supported by the current graphics card for variable rate shading.Additional resources: SystemInfo.supportsVariableRateShading, ShadingRateImage, CommandBuffer.SetShadingRateImage. |

### Static Methods

| Method | Description |
| --- | --- |
| QueryNativeValue | Get the native graphics API value for ShadingRateFragmentSize. |
