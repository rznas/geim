<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetShaderPassEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| passName | Shader pass name (case insensitive). |

### Returns

**bool** True if the Shader pass is enabled.

### Description

Checks whether a given Shader pass is enabled on this Material.

By default, all shader passes are enabled. Note that this method only returns `false` if the pass has been explicitly disabled for this Material using SetShaderPassEnabled. If a pass does not exist in the currently used Shader, but has not been disabled, then the method still returns `true`.

Additional resources: SetShaderPassEnabled, RenderLoop, Shader pass tags.
