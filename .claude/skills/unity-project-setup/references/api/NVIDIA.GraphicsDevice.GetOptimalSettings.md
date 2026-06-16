<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NVIDIA.GraphicsDevice.GetOptimalSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetWidth | Target width in pixels. |
| targetHeight | Target height in pixels. |
| quality | Current quality mode. |
| optimalSettings | Output structure, which will be filled with the recommended optimal settings data. |

### Returns

**bool** True if the function has successfully populated optimalSettings. False if it failed.

### Description

Returns a structure containing the optimal settings for a specific target resolution and quality.
