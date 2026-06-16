<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AMD.FSR2CommandInitializationData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the initialization state of a FSR2Context. You can only use and set this when calling GraphicsDevice.CreateFeature.

### Properties

| Property | Description |
| --- | --- |
| displaySizeHeight | The height of the presentation resolution targeted by the upscaling process. |
| displaySizeWidth | The width of the presentation resolution targeted by the upscaling process. |
| ffxFsrFlags | Initialization flags. Additional resources: FfxFsr2InitializationFlags. |
| maxRenderSizeHeight | The maximum height that rendering will be performed at. |
| maxRenderSizeWidth | The maximum width that rendering will be performed at. |

### Public Methods

| Method | Description |
| --- | --- |
| GetFlag | Helper function. Identifies whether an initialization flag is set or unset. See Also: FfxFsr2InitializationFlags. |
| SetFlag | Helper function. Controls the initialization feature flags set. See Also: FfxFsr2InitializationFlags. |
