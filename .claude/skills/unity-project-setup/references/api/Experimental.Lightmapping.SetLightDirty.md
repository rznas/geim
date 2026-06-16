<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Lightmapping.SetLightDirty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| light | The light to set as dirty. |

### Description

Manually sets a light as dirty.

Use this method to extend the Editor's capabilities so that it can track changes to Additional Light Data components which Scriptable Render Pipelines such as URP and HDRP attach to Lights. If you do not call this method, the Editor is not aware of these Additional Light Data components. Also see the documentation for Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate, which is the method the Editor uses to track all changes to lights, including those for Built-In Render Pipeline components.
